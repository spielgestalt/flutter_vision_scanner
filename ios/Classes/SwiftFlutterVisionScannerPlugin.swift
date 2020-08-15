import Flutter
import UIKit

public class SwiftFlutterVisionScannerPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_vision_scanner", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterVisionScannerPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let scannerResult = ScannerResult(scannerStatus: .success, filePath: "path", ocrText: "text");
        guard let data = try? JSONEncoder().encode(scannerResult),
            let jsonMap = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)  else {
                result(["scannerStatus":"failure"])
            return
        }
        result(jsonMap)
    }
}
