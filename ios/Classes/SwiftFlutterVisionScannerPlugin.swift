import Flutter
import UIKit

public class SwiftFlutterVisionScannerPlugin: NSObject, FlutterPlugin {
    let documentontrlller:DocumentPickerController = DocumentPickerController()
    let scannerController = DocumentScannerController()
    var result: FlutterResult?
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_vision_scanner", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterVisionScannerPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        self.result = result
        documentontrlller.pickDocument{ response in
            switch(response){
            case .success(let url):
                print(url)
                let image = UIImage();
                self.scannerController.pickDocument(image: image){ scannerResponse in
                    switch(scannerResponse){
                    case .success(let response):
                        print(response)
                        self.signal(scannerResult: ScannerResultSuccess( filePath: response, ocrText: response))
                    case .failure(let error):
                        print("error\(error)")
                        self.signal(scannerResult: ScannerResultFailure(code: "scannerError", message: "\(error)"))
                    }
                }

            case .failure(let failure):
                print(failure)
                self.signal(scannerResult: ScannerResultFailure(code: "scannerError", message: "\(failure)"))
            }            
        }
        /*guard let data = try? JSONEncoder().encode(scannerResult),
            let jsonMap = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)  else {
                result(["runtimeType":"failure"])
            return
        }
        result(jsonMap)*/
    }
    private func signal(scannerResult: ScannerResultSuccess){
        if let result = self.result{
            guard let data = try? JSONEncoder().encode(scannerResult),
                let jsonMap = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)  else {
                    result(["runtimeType":"failure"])
                return
            }
            result(jsonMap)
        }
    }
    private func signal(scannerResult: ScannerResultFailure){
        if let result = self.result{
            guard let data = try? JSONEncoder().encode(scannerResult),
                let jsonMap = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)  else {
                    result(["runtimeType":"failure"])
                return
            }
            result(jsonMap)
        }
    }
}
