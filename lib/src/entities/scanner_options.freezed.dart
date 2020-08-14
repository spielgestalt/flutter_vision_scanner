// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scanner_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ScannerOptions _$ScannerOptionsFromJson(Map<String, dynamic> json) {
  return _ScannerOptions.fromJson(json);
}

class _$ScannerOptionsTearOff {
  const _$ScannerOptionsTearOff();

// ignore: unused_element
  _ScannerOptions call({@required ScannerMode mode}) {
    return _ScannerOptions(
      mode: mode,
    );
  }
}

// ignore: unused_element
const $ScannerOptions = _$ScannerOptionsTearOff();

mixin _$ScannerOptions {
  ScannerMode get mode;

  Map<String, dynamic> toJson();
  $ScannerOptionsCopyWith<ScannerOptions> get copyWith;
}

abstract class $ScannerOptionsCopyWith<$Res> {
  factory $ScannerOptionsCopyWith(
          ScannerOptions value, $Res Function(ScannerOptions) then) =
      _$ScannerOptionsCopyWithImpl<$Res>;
  $Res call({ScannerMode mode});
}

class _$ScannerOptionsCopyWithImpl<$Res>
    implements $ScannerOptionsCopyWith<$Res> {
  _$ScannerOptionsCopyWithImpl(this._value, this._then);

  final ScannerOptions _value;
  // ignore: unused_field
  final $Res Function(ScannerOptions) _then;

  @override
  $Res call({
    Object mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed ? _value.mode : mode as ScannerMode,
    ));
  }
}

abstract class _$ScannerOptionsCopyWith<$Res>
    implements $ScannerOptionsCopyWith<$Res> {
  factory _$ScannerOptionsCopyWith(
          _ScannerOptions value, $Res Function(_ScannerOptions) then) =
      __$ScannerOptionsCopyWithImpl<$Res>;
  @override
  $Res call({ScannerMode mode});
}

class __$ScannerOptionsCopyWithImpl<$Res>
    extends _$ScannerOptionsCopyWithImpl<$Res>
    implements _$ScannerOptionsCopyWith<$Res> {
  __$ScannerOptionsCopyWithImpl(
      _ScannerOptions _value, $Res Function(_ScannerOptions) _then)
      : super(_value, (v) => _then(v as _ScannerOptions));

  @override
  _ScannerOptions get _value => super._value as _ScannerOptions;

  @override
  $Res call({
    Object mode = freezed,
  }) {
    return _then(_ScannerOptions(
      mode: mode == freezed ? _value.mode : mode as ScannerMode,
    ));
  }
}

@JsonSerializable()
class _$_ScannerOptions implements _ScannerOptions {
  const _$_ScannerOptions({@required this.mode}) : assert(mode != null);

  factory _$_ScannerOptions.fromJson(Map<String, dynamic> json) =>
      _$_$_ScannerOptionsFromJson(json);

  @override
  final ScannerMode mode;

  @override
  String toString() {
    return 'ScannerOptions(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScannerOptions &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @override
  _$ScannerOptionsCopyWith<_ScannerOptions> get copyWith =>
      __$ScannerOptionsCopyWithImpl<_ScannerOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScannerOptionsToJson(this);
  }
}

abstract class _ScannerOptions implements ScannerOptions {
  const factory _ScannerOptions({@required ScannerMode mode}) =
      _$_ScannerOptions;

  factory _ScannerOptions.fromJson(Map<String, dynamic> json) =
      _$_ScannerOptions.fromJson;

  @override
  ScannerMode get mode;
  @override
  _$ScannerOptionsCopyWith<_ScannerOptions> get copyWith;
}
