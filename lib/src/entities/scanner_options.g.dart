// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScannerOptions _$_$_ScannerOptionsFromJson(Map<String, dynamic> json) {
  return _$_ScannerOptions(
    mode: _$enumDecodeNullable(_$ScannerModeEnumMap, json['mode']),
  );
}

Map<String, dynamic> _$_$_ScannerOptionsToJson(_$_ScannerOptions instance) =>
    <String, dynamic>{
      'mode': _$ScannerModeEnumMap[instance.mode],
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

const _$ScannerModeEnumMap = {
  ScannerMode.withOcr: 'withOcr',
  ScannerMode.withoutOcr: 'withoutOcr',
};
