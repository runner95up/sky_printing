// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) {
  return _RegisterParams.fromJson(json);
}

/// @nodoc
mixin _$RegisterParams {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterParamsCopyWith<RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsCopyWith<$Res> {
  factory $RegisterParamsCopyWith(
          RegisterParams value, $Res Function(RegisterParams) then) =
      _$RegisterParamsCopyWithImpl<$Res, RegisterParams>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String confirmPassword,
      String address,
      String phone});
}

/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res, $Val extends RegisterParams>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? address = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterParamsImplCopyWith<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  factory _$$RegisterParamsImplCopyWith(_$RegisterParamsImpl value,
          $Res Function(_$RegisterParamsImpl) then) =
      __$$RegisterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String confirmPassword,
      String address,
      String phone});
}

/// @nodoc
class __$$RegisterParamsImplCopyWithImpl<$Res>
    extends _$RegisterParamsCopyWithImpl<$Res, _$RegisterParamsImpl>
    implements _$$RegisterParamsImplCopyWith<$Res> {
  __$$RegisterParamsImplCopyWithImpl(
      _$RegisterParamsImpl _value, $Res Function(_$RegisterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? address = null,
    Object? phone = null,
  }) {
    return _then(_$RegisterParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterParamsImpl implements _RegisterParams {
  const _$RegisterParamsImpl(
      {this.name = "",
      this.email = "",
      this.password = "",
      this.confirmPassword = "",
      this.address = "",
      this.phone = ""});

  factory _$RegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterParamsImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String phone;

  @override
  String toString() {
    return 'RegisterParams(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, email, password, confirmPassword, address, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      __$$RegisterParamsImplCopyWithImpl<_$RegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _RegisterParams implements RegisterParams {
  const factory _RegisterParams(
      {final String name,
      final String email,
      final String password,
      final String confirmPassword,
      final String address,
      final String phone}) = _$RegisterParamsImpl;

  factory _RegisterParams.fromJson(Map<String, dynamic> json) =
      _$RegisterParamsImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get address;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
