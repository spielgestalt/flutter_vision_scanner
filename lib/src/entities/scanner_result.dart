import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'scanner_result.freezed.dart';

@freezed
abstract class ScannerResult with _$ScannerResult {
  factory ScannerResult(
      {/*later: @required File file,*/ @required String filePath,
      String ocrResults}) = _ScannerResult;
}
