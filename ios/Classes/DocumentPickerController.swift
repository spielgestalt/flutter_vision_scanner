
import UIKit
import VisionKit

typealias PickerHandler = (Result<URL, ScannerFailures>) -> Void

class DocumentPickerController:NSObject, VNDocumentCameraViewControllerDelegate{
    var scannerViewController:UIViewController?
    var pickerHandler: PickerHandler!

    override init() {
        super.init()
        setupVision()
    }
    func pickDocument(completionHandler: @escaping PickerHandler){
        self.pickerHandler = completionHandler
        self.viewControllerWithWindow(window: nil)?.present(self.scannerViewController!, animated:true)
        //self.pickerHandler(.failure(ScannerFailures.simulator))
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
        scannerViewController = SimulatorScannerController(){ action in
            switch(action){
            case .cancel:
                print("Canceled")
            case .picked(url: let url):
                print("picked:\(url.absoluteString)")
            }
        }
        #else

        scannerViewController = VNDocumentCameraViewController()
        scannerViewController?.modalPresentationStyle = UIModalPresentationStyle.currentContext
        scannerViewController!.delegate = self
        #endif
    }
}
