import 'src/entities/scanner_options.dart';
import 'src/entities/scanner_result.dart';

import 'src/flutter_vision_scanner_plugin.dart';
export 'src/entities/scanner_options.dart' show ScannerOptions;
export 'src/entities/scanner_result.dart' show ScannerResult;
export 'src/scanner_status.dart' show ScannerStatus;

enum ScannerStatus { success, failure }

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
      return ScannerResult(
          scannerStatus: result.scannerStatus,
          filePath: result.filePath,
          ocrResults: result.ocrText);
    } catch (e) {
      //throw ScannerException(e.toString());
      throw ScannerException('$e');
    }
  }
}
