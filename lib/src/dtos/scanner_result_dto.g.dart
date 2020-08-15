// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScannerResultDto _$_$_ScannerResultDtoFromJson(Map<String, dynamic> json) {
  return _$_ScannerResultDto(
    scannerStatus:
        _$enumDecodeNullable(_$ScannerStatusEnumMap, json['scannerStatus']),
    ocrText: json['ocrText'] as String,
    filePath: json['filePath'] as String,
  );
}

Map<String, dynamic> _$_$_ScannerResultDtoToJson(
        _$_ScannerResultDto instance) =>
    <String, dynamic>{
      'scannerStatus': _$ScannerStatusEnumMap[instance.scannerStatus],
      'ocrText': instance.ocrText,
      'filePath': instance.filePath,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ScannerStatusEnumMap = {
  ScannerStatus.success: 'success',
  ScannerStatus.failure: 'failure',
};
