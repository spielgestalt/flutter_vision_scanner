
import UIKit
import VisionKit

typealias PickerHandler = (Result<URL, ScannerFailures>) -> Void

class DocumentPickerController:NSObject, VNDocumentCameraViewControllerDelegate{
    var scannerViewController:UIViewController?
    var options: ScannerOptions!
    var pickerHandler: PickerHandler!
    init(options:ScannerOptions) {
        self.options = options
        super.init()
        setupVision()
    }
    func pickDocument(completionHandler: @escaping PickerHandler){
        self.pickerHandler = completionHandler
        self.viewControllerWithWindow(window: nil)?.present(self.scannerViewController!, animated:true)
    }

    private func viewControllerWithWindow(window:UIWindow?) ->UIViewController?{
        var windowToUse = window
        if(windowToUse == nil){
            for  keyWindow in UIApplication.shared.windows{
                if(keyWindow.isKeyWindow){
                    windowToUse = keyWindow
                    break
                }
            }
        }
        var topController = windowToUse!.rootViewController;
        while topController?.presentedViewController != nil {
            topController = topController?.presentedViewController
        }
        return topController

    }
    private func setupVision() {
        #if targetEnvironment(simulator)
        scannerViewController = SimulatorScannerController(options: options!
            ){ action in
            switch(action){
            case .cancel:
                if let handler = self.pickerHandler{
                    handler(.failure(ScannerFailures.canceled))
                }
                print("Canceled")
            case .picked(url: let url):
                if let handler = self.pickerHandler{
                    handler(.success(url))
                }
            }
        }
        #else

        scannerViewController = VNDocumentCameraViewController()
        scannerViewController?.modalPresentationStyle = UIModalPresentationStyle.currentContext
        scannerViewController!.delegate = self
        #endif
    }
}
