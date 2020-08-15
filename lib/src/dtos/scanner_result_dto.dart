import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_result_dto.freezed.dart';
part 'scanner_result_dto.g.dart';

@freezed
abstract class ScannerResultDto with _$ScannerResultDto {
  factory ScannerResultDto(
      {@required String ocrText,
      @required String filePath}) = _ScannerResultDto;
  factory ScannerResultDto.fromJson(Map<String, dynamic> json) =>
      _$ScannerResultDtoFromJson(json);
}
