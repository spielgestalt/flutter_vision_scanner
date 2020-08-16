import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_result_dto.freezed.dart';
part 'scanner_result_dto.g.dart';

@freezed
abstract class ScannerResultDto with _$ScannerResultDto {
  factory ScannerResultDto.success({
    @required String filePath,
    @required String ocrText,
  }) = _ScannerResultDtoSuccess;
  factory ScannerResultDto.failure(
      {@required String code,
      @required String message}) = _ScannerResultDtoFailure;

  factory ScannerResultDto.fromJson(Map<String, dynamic> json) =>
      _$ScannerResultDtoFromJson(json);
}
