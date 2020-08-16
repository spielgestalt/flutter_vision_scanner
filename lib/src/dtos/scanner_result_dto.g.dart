// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScannerResultDtoSuccess _$_$_ScannerResultDtoSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_ScannerResultDtoSuccess(
    filePath: json['filePath'] as String,
    ocrText: json['ocrText'] as String,
  );
}

Map<String, dynamic> _$_$_ScannerResultDtoSuccessToJson(
        _$_ScannerResultDtoSuccess instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'ocrText': instance.ocrText,
    };

_$_ScannerResultDtoFailure _$_$_ScannerResultDtoFailureFromJson(
    Map<String, dynamic> json) {
  return _$_ScannerResultDtoFailure(
    code: json['code'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_ScannerResultDtoFailureToJson(
        _$_ScannerResultDtoFailure instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
