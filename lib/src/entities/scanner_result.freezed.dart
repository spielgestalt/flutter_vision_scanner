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
  ScannerSuccess success(
      {@required String filePath, @required String ocrText}) {
    return ScannerSuccess(
      filePath: filePath,
      ocrText: ocrText,
    );
  }

// ignore: unused_element
  ScannerFailure failure({@required String code, @required String message}) {
    return ScannerFailure(
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $ScannerResult = _$ScannerResultTearOff();

mixin _$ScannerResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String filePath, String ocrText),
    @required Result failure(String code, String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String filePath, String ocrText),
    Result failure(String code, String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ScannerSuccess value),
    @required Result failure(ScannerFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ScannerSuccess value),
    Result failure(ScannerFailure value),
    @required Result orElse(),
  });
}

abstract class $ScannerResultCopyWith<$Res> {
  factory $ScannerResultCopyWith(
          ScannerResult value, $Res Function(ScannerResult) then) =
      _$ScannerResultCopyWithImpl<$Res>;
}

class _$ScannerResultCopyWithImpl<$Res>
    implements $ScannerResultCopyWith<$Res> {
  _$ScannerResultCopyWithImpl(this._value, this._then);

  final ScannerResult _value;
  // ignore: unused_field
  final $Res Function(ScannerResult) _then;
}

abstract class $ScannerSuccessCopyWith<$Res> {
  factory $ScannerSuccessCopyWith(
          ScannerSuccess value, $Res Function(ScannerSuccess) then) =
      _$ScannerSuccessCopyWithImpl<$Res>;
  $Res call({String filePath, String ocrText});
}

class _$ScannerSuccessCopyWithImpl<$Res>
    extends _$ScannerResultCopyWithImpl<$Res>
    implements $ScannerSuccessCopyWith<$Res> {
  _$ScannerSuccessCopyWithImpl(
      ScannerSuccess _value, $Res Function(ScannerSuccess) _then)
      : super(_value, (v) => _then(v as ScannerSuccess));

  @override
  ScannerSuccess get _value => super._value as ScannerSuccess;

  @override
  $Res call({
    Object filePath = freezed,
    Object ocrText = freezed,
  }) {
    return _then(ScannerSuccess(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      ocrText: ocrText == freezed ? _value.ocrText : ocrText as String,
    ));
  }
}

class _$ScannerSuccess implements ScannerSuccess {
  _$ScannerSuccess({@required this.filePath, @required this.ocrText})
      : assert(filePath != null),
        assert(ocrText != null);

  @override
  final String filePath;
  @override
  final String ocrText;

  @override
  String toString() {
    return 'ScannerResult.success(filePath: $filePath, ocrText: $ocrText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScannerSuccess &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.ocrText, ocrText) ||
                const DeepCollectionEquality().equals(other.ocrText, ocrText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(ocrText);

  @override
  $ScannerSuccessCopyWith<ScannerSuccess> get copyWith =>
      _$ScannerSuccessCopyWithImpl<ScannerSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String filePath, String ocrText),
    @required Result failure(String code, String message),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(filePath, ocrText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String filePath, String ocrText),
    Result failure(String code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(filePath, ocrText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ScannerSuccess value),
    @required Result failure(ScannerFailure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ScannerSuccess value),
    Result failure(ScannerFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ScannerSuccess implements ScannerResult {
  factory ScannerSuccess(
      {@required String filePath, @required String ocrText}) = _$ScannerSuccess;

  String get filePath;
  String get ocrText;
  $ScannerSuccessCopyWith<ScannerSuccess> get copyWith;
}

abstract class $ScannerFailureCopyWith<$Res> {
  factory $ScannerFailureCopyWith(
          ScannerFailure value, $Res Function(ScannerFailure) then) =
      _$ScannerFailureCopyWithImpl<$Res>;
  $Res call({String code, String message});
}

class _$ScannerFailureCopyWithImpl<$Res>
    extends _$ScannerResultCopyWithImpl<$Res>
    implements $ScannerFailureCopyWith<$Res> {
  _$ScannerFailureCopyWithImpl(
      ScannerFailure _value, $Res Function(ScannerFailure) _then)
      : super(_value, (v) => _then(v as ScannerFailure));

  @override
  ScannerFailure get _value => super._value as ScannerFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(ScannerFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ScannerFailure implements ScannerFailure {
  _$ScannerFailure({@required this.code, @required this.message})
      : assert(code != null),
        assert(message != null);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ScannerResult.failure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScannerFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  $ScannerFailureCopyWith<ScannerFailure> get copyWith =>
      _$ScannerFailureCopyWithImpl<ScannerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(String filePath, String ocrText),
    @required Result failure(String code, String message),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(String filePath, String ocrText),
    Result failure(String code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(ScannerSuccess value),
    @required Result failure(ScannerFailure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(ScannerSuccess value),
    Result failure(ScannerFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ScannerFailure implements ScannerResult {
  factory ScannerFailure({@required String code, @required String message}) =
      _$ScannerFailure;

  String get code;
  String get message;
  $ScannerFailureCopyWith<ScannerFailure> get copyWith;
}
