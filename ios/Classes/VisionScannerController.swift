import VisionKit
import Vision
import UIKit

typealias Handler = (Result<URL, ScannerFailures>) -> Void
class VisionScannerController:NSObject, VNDocumentCameraViewControllerDelegate{
    //var scannerViewController:VNDocumentCameraViewController?
    var scannerViewController:UIViewController?
    var handler: Handler!

    var textRecognitionRequest = VNRecognizeTextRequest(completionHandler: nil)
    private let textRecognitionWorkQueue = DispatchQueue(label: "TextRecognitionQueue", qos: .userInitiated, attributes: [], autoreleaseFrequency: .workItem)

    override init() {
        super.init()
        setupVision()
    }
    func pickImage(completionHandler: @escaping Handler){
        self.handler = completionHandler
        self.viewControllerWithWindow(window: nil)?.present(self.scannerViewController!, animated:true)
        self.handler(.failure(ScannerFailures.simulator))
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
        scannerViewController = SimulatorVideoController(){ action in
            switch(action){
            case .cancel:
                print("Canceled")
            }

        }
        #else

        scannerViewController = VNDocumentCameraViewController()
        scannerViewController?.modalPresentationStyle = UIModalPresentationStyle.currentContext
        scannerViewController!.delegate = self
        textRecognitionRequest = VNRecognizeTextRequest { (request, error) in
            guard let observations = request.results as? [VNRecognizedTextObservation] else { return }

            var detectedText = ""
            var boundingBoxes = [CGRect]()
            for observation in observations {
                guard let topCandidate = observation.topCandidates(1).first else { return }

                detectedText += topCandidate.string
                detectedText += "\n"

                do {
                    guard let rectangle = try topCandidate.boundingBox(for: topCandidate.string.startIndex..<topCandidate.string.endIndex) else { return }
                    boundingBoxes.append(rectangle.boundingBox)
                } catch {
                    // You should handle errors appropriately in your app
                    print(error)
                }
            }

            DispatchQueue.main.async {
                let test: ScannerResultType = ScannerResultType(.success())
                self.scannerResultCallback()
                //if let result = self.result{

                    //result(["imageUrl":self.filePath,"ocrResult":detectedText, "status":"success"])
                //}
            }
        }
        textRecognitionRequest.recognitionLevel = .accurate
        #endif
    }
}
