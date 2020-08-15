// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scanner_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ScannerResultDto _$ScannerResultDtoFromJson(Map<String, dynamic> json) {
  return _ScannerResultDto.fromJson(json);
}

class _$ScannerResultDtoTearOff {
  const _$ScannerResultDtoTearOff();

// ignore: unused_element
  _ScannerResultDto call(
      {@required String ocrText, @required String filePath}) {
    return _ScannerResultDto(
      ocrText: ocrText,
      filePath: filePath,
    );
  }
}

// ignore: unused_element
const $ScannerResultDto = _$ScannerResultDtoTearOff();

mixin _$ScannerResultDto {
  String get ocrText;
  String get filePath;

  Map<String, dynamic> toJson();
  $ScannerResultDtoCopyWith<ScannerResultDto> get copyWith;
}

abstract class $ScannerResultDtoCopyWith<$Res> {
  factory $ScannerResultDtoCopyWith(
          ScannerResultDto value, $Res Function(ScannerResultDto) then) =
      _$ScannerResultDtoCopyWithImpl<$Res>;
  $Res call({String ocrText, String filePath});
}

class _$ScannerResultDtoCopyWithImpl<$Res>
    implements $ScannerResultDtoCopyWith<$Res> {
  _$ScannerResultDtoCopyWithImpl(this._value, this._then);

  final ScannerResultDto _value;
  // ignore: unused_field
  final $Res Function(ScannerResultDto) _then;

  @override
  $Res call({
    Object ocrText = freezed,
    Object filePath = freezed,
  }) {
    return _then(_value.copyWith(
      ocrText: ocrText == freezed ? _value.ocrText : ocrText as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
    ));
  }
}

abstract class _$ScannerResultDtoCopyWith<$Res>
    implements $ScannerResultDtoCopyWith<$Res> {
  factory _$ScannerResultDtoCopyWith(
          _ScannerResultDto value, $Res Function(_ScannerResultDto) then) =
      __$ScannerResultDtoCopyWithImpl<$Res>;
  @override
  $Res call({String ocrText, String filePath});
}

class __$ScannerResultDtoCopyWithImpl<$Res>
    extends _$ScannerResultDtoCopyWithImpl<$Res>
    implements _$ScannerResultDtoCopyWith<$Res> {
  __$ScannerResultDtoCopyWithImpl(
      _ScannerResultDto _value, $Res Function(_ScannerResultDto) _then)
      : super(_value, (v) => _then(v as _ScannerResultDto));

  @override
  _ScannerResultDto get _value => super._value as _ScannerResultDto;

  @override
  $Res call({
    Object ocrText = freezed,
    Object filePath = freezed,
  }) {
    return _then(_ScannerResultDto(
      ocrText: ocrText == freezed ? _value.ocrText : ocrText as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
    ));
  }
}

@JsonSerializable()
class _$_ScannerResultDto implements _ScannerResultDto {
  _$_ScannerResultDto({@required this.ocrText, @required this.filePath})
      : assert(ocrText != null),
        assert(filePath != null);

  factory _$_ScannerResultDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ScannerResultDtoFromJson(json);

  @override
  final String ocrText;
  @override
  final String filePath;

  @override
  String toString() {
    return 'ScannerResultDto(ocrText: $ocrText, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScannerResultDto &&
            (identical(other.ocrText, ocrText) ||
                const DeepCollectionEquality()
                    .equals(other.ocrText, ocrText)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ocrText) ^
      const DeepCollectionEquality().hash(filePath);

  @override
  _$ScannerResultDtoCopyWith<_ScannerResultDto> get copyWith =>
      __$ScannerResultDtoCopyWithImpl<_ScannerResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScannerResultDtoToJson(this);
  }
}

abstract class _ScannerResultDto implements ScannerResultDto {
  factory _ScannerResultDto(
      {@required String ocrText,
      @required String filePath}) = _$_ScannerResultDto;

  factory _ScannerResultDto.fromJson(Map<String, dynamic> json) =
      _$_ScannerResultDto.fromJson;

  @override
  String get ocrText;
  @override
  String get filePath;
  @override
  _$ScannerResultDtoCopyWith<_ScannerResultDto> get copyWith;
}
