import 'package:freezed_annotation/freezed_annotation.dart';

import '../scanner_status.dart';

part 'scanner_result.freezed.dart';

@freezed
abstract class ScannerResult with _$ScannerResult {
  factory ScannerResult(
      {@required ScannerStatus scannerStatus,
      /*later: @required File file,*/ @required String filePath,
      String ocrResults}) = _ScannerResult;
}
