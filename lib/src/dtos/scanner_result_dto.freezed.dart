// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'scanner_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ScannerResultDto _$ScannerResultDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'success':
      return _ScannerResultDtoSuccess.fromJson(json);
    case 'failure':
      return _ScannerResultDtoFailure.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$ScannerResultDtoTearOff {
  const _$ScannerResultDtoTearOff();

// ignore: unused_element
  _ScannerResultDtoSuccess success(
      {@required String filePath, @required String ocrText}) {
    return _ScannerResultDtoSuccess(
      filePath: filePath,
      ocrText: ocrText,
    );
  }

// ignore: unused_element
  _ScannerResultDtoFailure failure(
      {@required String code, @required String message}) {
    return _ScannerResultDtoFailure(
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $ScannerResultDto = _$ScannerResultDtoTearOff();

mixin _$ScannerResultDto {
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
    @required Result success(_ScannerResultDtoSuccess value),
    @required Result failure(_ScannerResultDtoFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ScannerResultDtoSuccess value),
    Result failure(_ScannerResultDtoFailure value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $ScannerResultDtoCopyWith<$Res> {
  factory $ScannerResultDtoCopyWith(
          ScannerResultDto value, $Res Function(ScannerResultDto) then) =
      _$ScannerResultDtoCopyWithImpl<$Res>;
}

class _$ScannerResultDtoCopyWithImpl<$Res>
    implements $ScannerResultDtoCopyWith<$Res> {
  _$ScannerResultDtoCopyWithImpl(this._value, this._then);

  final ScannerResultDto _value;
  // ignore: unused_field
  final $Res Function(ScannerResultDto) _then;
}

abstract class _$ScannerResultDtoSuccessCopyWith<$Res> {
  factory _$ScannerResultDtoSuccessCopyWith(_ScannerResultDtoSuccess value,
          $Res Function(_ScannerResultDtoSuccess) then) =
      __$ScannerResultDtoSuccessCopyWithImpl<$Res>;
  $Res call({String filePath, String ocrText});
}

class __$ScannerResultDtoSuccessCopyWithImpl<$Res>
    extends _$ScannerResultDtoCopyWithImpl<$Res>
    implements _$ScannerResultDtoSuccessCopyWith<$Res> {
  __$ScannerResultDtoSuccessCopyWithImpl(_ScannerResultDtoSuccess _value,
      $Res Function(_ScannerResultDtoSuccess) _then)
      : super(_value, (v) => _then(v as _ScannerResultDtoSuccess));

  @override
  _ScannerResultDtoSuccess get _value =>
      super._value as _ScannerResultDtoSuccess;

  @override
  $Res call({
    Object filePath = freezed,
    Object ocrText = freezed,
  }) {
    return _then(_ScannerResultDtoSuccess(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      ocrText: ocrText == freezed ? _value.ocrText : ocrText as String,
    ));
  }
}

@JsonSerializable()
class _$_ScannerResultDtoSuccess implements _ScannerResultDtoSuccess {
  _$_ScannerResultDtoSuccess({@required this.filePath, @required this.ocrText})
      : assert(filePath != null),
        assert(ocrText != null);

  factory _$_ScannerResultDtoSuccess.fromJson(Map<String, dynamic> json) =>
      _$_$_ScannerResultDtoSuccessFromJson(json);

  @override
  final String filePath;
  @override
  final String ocrText;

  @override
  String toString() {
    return 'ScannerResultDto.success(filePath: $filePath, ocrText: $ocrText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScannerResultDtoSuccess &&
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
  _$ScannerResultDtoSuccessCopyWith<_ScannerResultDtoSuccess> get copyWith =>
      __$ScannerResultDtoSuccessCopyWithImpl<_ScannerResultDtoSuccess>(
          this, _$identity);

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
    @required Result success(_ScannerResultDtoSuccess value),
    @required Result failure(_ScannerResultDtoFailure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ScannerResultDtoSuccess value),
    Result failure(_ScannerResultDtoFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScannerResultDtoSuccessToJson(this)
      ..['runtimeType'] = 'success';
  }
}

abstract class _ScannerResultDtoSuccess implements ScannerResultDto {
  factory _ScannerResultDtoSuccess(
      {@required String filePath,
      @required String ocrText}) = _$_ScannerResultDtoSuccess;

  factory _ScannerResultDtoSuccess.fromJson(Map<String, dynamic> json) =
      _$_ScannerResultDtoSuccess.fromJson;

  String get filePath;
  String get ocrText;
  _$ScannerResultDtoSuccessCopyWith<_ScannerResultDtoSuccess> get copyWith;
}

abstract class _$ScannerResultDtoFailureCopyWith<$Res> {
  factory _$ScannerResultDtoFailureCopyWith(_ScannerResultDtoFailure value,
          $Res Function(_ScannerResultDtoFailure) then) =
      __$ScannerResultDtoFailureCopyWithImpl<$Res>;
  $Res call({String code, String message});
}

class __$ScannerResultDtoFailureCopyWithImpl<$Res>
    extends _$ScannerResultDtoCopyWithImpl<$Res>
    implements _$ScannerResultDtoFailureCopyWith<$Res> {
  __$ScannerResultDtoFailureCopyWithImpl(_ScannerResultDtoFailure _value,
      $Res Function(_ScannerResultDtoFailure) _then)
      : super(_value, (v) => _then(v as _ScannerResultDtoFailure));

  @override
  _ScannerResultDtoFailure get _value =>
      super._value as _ScannerResultDtoFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_ScannerResultDtoFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$_ScannerResultDtoFailure implements _ScannerResultDtoFailure {
  _$_ScannerResultDtoFailure({@required this.code, @required this.message})
      : assert(code != null),
        assert(message != null);

  factory _$_ScannerResultDtoFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_ScannerResultDtoFailureFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ScannerResultDto.failure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScannerResultDtoFailure &&
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
  _$ScannerResultDtoFailureCopyWith<_ScannerResultDtoFailure> get copyWith =>
      __$ScannerResultDtoFailureCopyWithImpl<_ScannerResultDtoFailure>(
          this, _$identity);

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
    @required Result success(_ScannerResultDtoSuccess value),
    @required Result failure(_ScannerResultDtoFailure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_ScannerResultDtoSuccess value),
    Result failure(_ScannerResultDtoFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScannerResultDtoFailureToJson(this)
      ..['runtimeType'] = 'failure';
  }
}

abstract class _ScannerResultDtoFailure implements ScannerResultDto {
  factory _ScannerResultDtoFailure(
      {@required String code,
      @required String message}) = _$_ScannerResultDtoFailure;

  factory _ScannerResultDtoFailure.fromJson(Map<String, dynamic> json) =
      _$_ScannerResultDtoFailure.fromJson;

  String get code;
  String get message;
  _$ScannerResultDtoFailureCopyWith<_ScannerResultDtoFailure> get copyWith;
}
