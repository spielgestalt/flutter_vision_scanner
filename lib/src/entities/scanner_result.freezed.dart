// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scanner_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ScannerResultTearOff {
  const _$ScannerResultTearOff();

// ignore: unused_element
  _ScannerResult call(
      {@required ScannerStatus scannerStatus,
      @required String filePath,
      String ocrResults}) {
    return _ScannerResult(
      scannerStatus: scannerStatus,
      filePath: filePath,
      ocrResults: ocrResults,
    );
  }
}

// ignore: unused_element
const $ScannerResult = _$ScannerResultTearOff();

mixin _$ScannerResult {
  ScannerStatus get scannerStatus;
  String get filePath;
  String get ocrResults;

  $ScannerResultCopyWith<ScannerResult> get copyWith;
}

abstract class $ScannerResultCopyWith<$Res> {
  factory $ScannerResultCopyWith(
          ScannerResult value, $Res Function(ScannerResult) then) =
      _$ScannerResultCopyWithImpl<$Res>;
  $Res call({ScannerStatus scannerStatus, String filePath, String ocrResults});
}

class _$ScannerResultCopyWithImpl<$Res>
    implements $ScannerResultCopyWith<$Res> {
  _$ScannerResultCopyWithImpl(this._value, this._then);

  final ScannerResult _value;
  // ignore: unused_field
  final $Res Function(ScannerResult) _then;

  @override
  $Res call({
    Object scannerStatus = freezed,
    Object filePath = freezed,
    Object ocrResults = freezed,
  }) {
    return _then(_value.copyWith(
      scannerStatus: scannerStatus == freezed
          ? _value.scannerStatus
          : scannerStatus as ScannerStatus,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      ocrResults:
          ocrResults == freezed ? _value.ocrResults : ocrResults as String,
    ));
  }
}

abstract class _$ScannerResultCopyWith<$Res>
    implements $ScannerResultCopyWith<$Res> {
  factory _$ScannerResultCopyWith(
          _ScannerResult value, $Res Function(_ScannerResult) then) =
      __$ScannerResultCopyWithImpl<$Res>;
  @override
  $Res call({ScannerStatus scannerStatus, String filePath, String ocrResults});
}

class __$ScannerResultCopyWithImpl<$Res>
    extends _$ScannerResultCopyWithImpl<$Res>
    implements _$ScannerResultCopyWith<$Res> {
  __$ScannerResultCopyWithImpl(
      _ScannerResult _value, $Res Function(_ScannerResult) _then)
      : super(_value, (v) => _then(v as _ScannerResult));

  @override
  _ScannerResult get _value => super._value as _ScannerResult;

  @override
  $Res call({
    Object scannerStatus = freezed,
    Object filePath = freezed,
    Object ocrResults = freezed,
  }) {
    return _then(_ScannerResult(
      scannerStatus: scannerStatus == freezed
          ? _value.scannerStatus
          : scannerStatus as ScannerStatus,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      ocrResults:
          ocrResults == freezed ? _value.ocrResults : ocrResults as String,
    ));
  }
}

class _$_ScannerResult implements _ScannerResult {
  _$_ScannerResult(
      {@required this.scannerStatus, @required this.filePath, this.ocrResults})
      : assert(scannerStatus != null),
        assert(filePath != null);

  @override
  final ScannerStatus scannerStatus;
  @override
  final String filePath;
  @override
  final String ocrResults;

  @override
  String toString() {
    return 'ScannerResult(scannerStatus: $scannerStatus, filePath: $filePath, ocrResults: $ocrResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScannerResult &&
            (identical(other.scannerStatus, scannerStatus) ||
                const DeepCollectionEquality()
                    .equals(other.scannerStatus, scannerStatus)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.ocrResults, ocrResults) ||
                const DeepCollectionEquality()
                    .equals(other.ocrResults, ocrResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scannerStatus) ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(ocrResults);

  @override
  _$ScannerResultCopyWith<_ScannerResult> get copyWith =>
      __$ScannerResultCopyWithImpl<_ScannerResult>(this, _$identity);
}

abstract class _ScannerResult implements ScannerResult {
  factory _ScannerResult(
      {@required ScannerStatus scannerStatus,
      @required String filePath,
      String ocrResults}) = _$_ScannerResult;

  @override
  ScannerStatus get scannerStatus;
  @override
  String get filePath;
  @override
  String get ocrResults;
  @override
  _$ScannerResultCopyWith<_ScannerResult> get copyWith;
}
