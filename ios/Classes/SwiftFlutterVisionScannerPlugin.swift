import Flutter
import UIKit

public class SwiftFlutterVisionScannerPlugin: NSObject, FlutterPlugin {
    var documentontrlller:DocumentPickerController!
    let scannerController = DocumentScannerController()
    var result: FlutterResult?
    let registrar: FlutterPluginRegistrar
    init(registrar: FlutterPluginRegistrar){
        self.registrar = registrar
        super.init()
    }
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_vision_scanner", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterVisionScannerPlugin(registrar: registrar)

        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if (call.method != "scan") {
            result(FlutterError(code: "notImplemented", message: "\(call.method) is not implemented", details: nil))
            return
        }
        if let arguments = call.arguments, let data = try? JSONSerialization.data(withJSONObject: arguments, options: .prettyPrinted), let options = try? JSONDecoder().decode(ScannerOptions.self, from: data){
            print(options)
            self.result = result
            var options = options
            if let simulatorImagePath = options.simulatorImagePath{

                let frameworkPath = registrar.lookupKey(forAsset: simulatorImagePath)
                options = ScannerOptions(mode: options.mode, simulatorImagePath: options.simulatorImagePath, simulatorImageKeyPath: frameworkPath)
            }

            handleDocumentPick(options: options)
        }else{
            result(FlutterError(code: "noOptionsFound", message: "options: \(call.arguments ?? "(nil)") is not correct", details: nil))
            return
        }
    }
    private func handleDocumentPick(options: ScannerOptions){
        self.documentontrlller = DocumentPickerController(options: options)
        documentontrlller.pickDocument(){ response in
            switch(response){
            case .success(let url):
                let image = UIImage(contentsOfFile: url.absoluteString)!
                self.scannerController.pickDocument(image: image){ scannerResponse in
                    switch(scannerResponse){
                    case .success(let response):
                        print(response)
                        self.signal(scannerResult: ScannerResultSuccess( filePath: url.absoluteString, ocrText: response))
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
