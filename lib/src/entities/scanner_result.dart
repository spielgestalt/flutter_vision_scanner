import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_result.freezed.dart';

@freezed
abstract class ScannerResult with _$ScannerResult {
  factory ScannerResult.success(
      {@required String filePath,
      @nullable String ocrResults}) = ScannerSuccess;
  factory ScannerResult.failure(
      {@required String code, @required String message}) = ScannerFailure;
}
