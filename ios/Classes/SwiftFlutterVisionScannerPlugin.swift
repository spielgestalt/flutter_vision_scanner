import Flutter
import UIKit

public class SwiftFlutterVisionScannerPlugin: NSObject, FlutterPlugin {
    let scannerContrlller:DocumentPickerController = DocumentPickerController()
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_vision_scanner", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterVisionScannerPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let scannerResult = ScannerResult(runtimeType: .success, filePath: "path", ocrText: "text");
        scannerContrlller.pickDocument{ response in
            switch(response){
            case .success(let url):
                print(url)
            case .failure(let failure):
                print(failure)
            }            
        }
        guard let data = try? JSONEncoder().encode(scannerResult),
            let jsonMap = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)  else {
                result(["runtimeType":"failure"])
            return
        }
        result(jsonMap)
    }
}
