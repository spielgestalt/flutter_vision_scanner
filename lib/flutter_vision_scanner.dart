import 'src/entities/scanner_options.dart';
import 'src/entities/scanner_result.dart';

import 'src/flutter_vision_scanner_plugin.dart';
export 'src/entities/scanner_options.dart';
export 'src/entities/scanner_result.dart';

class ScannerException extends Error {
  final String message;
  ScannerException(this.message);
  @override
  String toString() => "Scanner error: $message";
}

class FlutterVisionScanner {
  final IVisionScanner _scanner = FlutterVisionScannerPlugin.instance();

  Future<ScannerResult> scan(
      {ScannerOptions options =
          const ScannerOptions(mode: ScannerMode.withOcr)}) async {
    try {
      final result = await _scanner.scan(options);
      return result.map(
          success: (success) => ScannerResult.success(
              filePath: success.filePath, ocrText: success.ocrText),
          failure: (failure) => ScannerResult.failure(
              code: failure.code, message: failure.message));
    } catch (e) {
      //throw ScannerException(e.toString());
      throw ScannerException('$e');
    }
  }
}
