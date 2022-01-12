// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupEventTearOff {
  const _$SignupEventTearOff();

  _RegisterWithCredentials registerWithCredentials(
      {required String? name,
      required String? email,
      required String? password,
      required String? confirmPassword}) {
    return _RegisterWithCredentials(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  _LoginWithCredentials loginWithCredentials(
      {required String? email, required String? password}) {
    return _LoginWithCredentials(
      email: email,
      password: password,
    );
  }

  _GetUserCredentials getUserCredentials() {
    return const _GetUserCredentials();
  }

  _PostUserChangedName postUserChangedName(
      {required String? firstName, required String? lastName}) {
    return _PostUserChangedName(
      firstName: firstName,
      lastName: lastName,
    );
  }

  _ExpansionChanged expansionChanged({required int? index}) {
    return _ExpansionChanged(
      index: index,
    );
  }

  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }
}

/// @nodoc
const $SignupEvent = _$SignupEventTearOff();

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  final SignupEvent _value;
  // ignore: unused_field
  final $Res Function(SignupEvent) _then;
}

/// @nodoc
abstract class _$RegisterWithCredentialsCopyWith<$Res> {
  factory _$RegisterWithCredentialsCopyWith(_RegisterWithCredentials value,
          $Res Function(_RegisterWithCredentials) then) =
      __$RegisterWithCredentialsCopyWithImpl<$Res>;
  $Res call(
      {String? name, String? email, String? password, String? confirmPassword});
}

/// @nodoc
class __$RegisterWithCredentialsCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$RegisterWithCredentialsCopyWith<$Res> {
  __$RegisterWithCredentialsCopyWithImpl(_RegisterWithCredentials _value,
      $Res Function(_RegisterWithCredentials) _then)
      : super(_value, (v) => _then(v as _RegisterWithCredentials));

  @override
  _RegisterWithCredentials get _value =>
      super._value as _RegisterWithCredentials;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_RegisterWithCredentials(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterWithCredentials implements _RegisterWithCredentials {
  const _$_RegisterWithCredentials(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword});

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;

  @override
  String toString() {
    return 'SignupEvent.registerWithCredentials(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterWithCredentials &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$RegisterWithCredentialsCopyWith<_RegisterWithCredentials> get copyWith =>
      __$RegisterWithCredentialsCopyWithImpl<_RegisterWithCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return registerWithCredentials(name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return registerWithCredentials?.call(
        name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (registerWithCredentials != null) {
      return registerWithCredentials(name, email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return registerWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return registerWithCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (registerWithCredentials != null) {
      return registerWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithCredentials implements SignupEvent {
  const factory _RegisterWithCredentials(
      {required String? name,
      required String? email,
      required String? password,
      required String? confirmPassword}) = _$_RegisterWithCredentials;

  String? get name;
  String? get email;
  String? get password;
  String? get confirmPassword;
  @JsonKey(ignore: true)
  _$RegisterWithCredentialsCopyWith<_RegisterWithCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginWithCredentialsCopyWith<$Res> {
  factory _$LoginWithCredentialsCopyWith(_LoginWithCredentials value,
          $Res Function(_LoginWithCredentials) then) =
      __$LoginWithCredentialsCopyWithImpl<$Res>;
  $Res call({String? email, String? password});
}

/// @nodoc
class __$LoginWithCredentialsCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$LoginWithCredentialsCopyWith<$Res> {
  __$LoginWithCredentialsCopyWithImpl(
      _LoginWithCredentials _value, $Res Function(_LoginWithCredentials) _then)
      : super(_value, (v) => _then(v as _LoginWithCredentials));

  @override
  _LoginWithCredentials get _value => super._value as _LoginWithCredentials;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginWithCredentials(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginWithCredentials implements _LoginWithCredentials {
  const _$_LoginWithCredentials({required this.email, required this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'SignupEvent.loginWithCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginWithCredentials &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginWithCredentialsCopyWith<_LoginWithCredentials> get copyWith =>
      __$LoginWithCredentialsCopyWithImpl<_LoginWithCredentials>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return loginWithCredentials(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return loginWithCredentials?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (loginWithCredentials != null) {
      return loginWithCredentials(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loginWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loginWithCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loginWithCredentials != null) {
      return loginWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _LoginWithCredentials implements SignupEvent {
  const factory _LoginWithCredentials(
      {required String? email,
      required String? password}) = _$_LoginWithCredentials;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$LoginWithCredentialsCopyWith<_LoginWithCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserCredentialsCopyWith<$Res> {
  factory _$GetUserCredentialsCopyWith(
          _GetUserCredentials value, $Res Function(_GetUserCredentials) then) =
      __$GetUserCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserCredentialsCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$GetUserCredentialsCopyWith<$Res> {
  __$GetUserCredentialsCopyWithImpl(
      _GetUserCredentials _value, $Res Function(_GetUserCredentials) _then)
      : super(_value, (v) => _then(v as _GetUserCredentials));

  @override
  _GetUserCredentials get _value => super._value as _GetUserCredentials;
}

/// @nodoc

class _$_GetUserCredentials implements _GetUserCredentials {
  const _$_GetUserCredentials();

  @override
  String toString() {
    return 'SignupEvent.getUserCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetUserCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return getUserCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return getUserCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (getUserCredentials != null) {
      return getUserCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return getUserCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return getUserCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (getUserCredentials != null) {
      return getUserCredentials(this);
    }
    return orElse();
  }
}

abstract class _GetUserCredentials implements SignupEvent {
  const factory _GetUserCredentials() = _$_GetUserCredentials;
}

/// @nodoc
abstract class _$PostUserChangedNameCopyWith<$Res> {
  factory _$PostUserChangedNameCopyWith(_PostUserChangedName value,
          $Res Function(_PostUserChangedName) then) =
      __$PostUserChangedNameCopyWithImpl<$Res>;
  $Res call({String? firstName, String? lastName});
}

/// @nodoc
class __$PostUserChangedNameCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$PostUserChangedNameCopyWith<$Res> {
  __$PostUserChangedNameCopyWithImpl(
      _PostUserChangedName _value, $Res Function(_PostUserChangedName) _then)
      : super(_value, (v) => _then(v as _PostUserChangedName));

  @override
  _PostUserChangedName get _value => super._value as _PostUserChangedName;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_PostUserChangedName(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostUserChangedName implements _PostUserChangedName {
  const _$_PostUserChangedName(
      {required this.firstName, required this.lastName});

  @override
  final String? firstName;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'SignupEvent.postUserChangedName(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostUserChangedName &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$PostUserChangedNameCopyWith<_PostUserChangedName> get copyWith =>
      __$PostUserChangedNameCopyWithImpl<_PostUserChangedName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return postUserChangedName(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return postUserChangedName?.call(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (postUserChangedName != null) {
      return postUserChangedName(firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return postUserChangedName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return postUserChangedName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (postUserChangedName != null) {
      return postUserChangedName(this);
    }
    return orElse();
  }
}

abstract class _PostUserChangedName implements SignupEvent {
  const factory _PostUserChangedName(
      {required String? firstName,
      required String? lastName}) = _$_PostUserChangedName;

  String? get firstName;
  String? get lastName;
  @JsonKey(ignore: true)
  _$PostUserChangedNameCopyWith<_PostUserChangedName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExpansionChangedCopyWith<$Res> {
  factory _$ExpansionChangedCopyWith(
          _ExpansionChanged value, $Res Function(_ExpansionChanged) then) =
      __$ExpansionChangedCopyWithImpl<$Res>;
  $Res call({int? index});
}

/// @nodoc
class __$ExpansionChangedCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$ExpansionChangedCopyWith<$Res> {
  __$ExpansionChangedCopyWithImpl(
      _ExpansionChanged _value, $Res Function(_ExpansionChanged) _then)
      : super(_value, (v) => _then(v as _ExpansionChanged));

  @override
  _ExpansionChanged get _value => super._value as _ExpansionChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ExpansionChanged(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ExpansionChanged implements _ExpansionChanged {
  const _$_ExpansionChanged({required this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'SignupEvent.expansionChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpansionChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$ExpansionChangedCopyWith<_ExpansionChanged> get copyWith =>
      __$ExpansionChangedCopyWithImpl<_ExpansionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return expansionChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return expansionChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (expansionChanged != null) {
      return expansionChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return expansionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return expansionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (expansionChanged != null) {
      return expansionChanged(this);
    }
    return orElse();
  }
}

abstract class _ExpansionChanged implements SignupEvent {
  const factory _ExpansionChanged({required int? index}) = _$_ExpansionChanged;

  int? get index;
  @JsonKey(ignore: true)
  _$ExpansionChangedCopyWith<_ExpansionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SignupEventCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'SignupEvent.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? password,
            String? confirmPassword)
        registerWithCredentials,
    required TResult Function(String? email, String? password)
        loginWithCredentials,
    required TResult Function() getUserCredentials,
    required TResult Function(String? firstName, String? lastName)
        postUserChangedName,
    required TResult Function(int? index) expansionChanged,
    required TResult Function() loadSuccess,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
  }) {
    return loadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? password,
            String? confirmPassword)?
        registerWithCredentials,
    TResult Function(String? email, String? password)? loginWithCredentials,
    TResult Function()? getUserCredentials,
    TResult Function(String? firstName, String? lastName)? postUserChangedName,
    TResult Function(int? index)? expansionChanged,
    TResult Function()? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithCredentials value)
        registerWithCredentials,
    required TResult Function(_LoginWithCredentials value) loginWithCredentials,
    required TResult Function(_GetUserCredentials value) getUserCredentials,
    required TResult Function(_PostUserChangedName value) postUserChangedName,
    required TResult Function(_ExpansionChanged value) expansionChanged,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithCredentials value)? registerWithCredentials,
    TResult Function(_LoginWithCredentials value)? loginWithCredentials,
    TResult Function(_GetUserCredentials value)? getUserCredentials,
    TResult Function(_PostUserChangedName value)? postUserChangedName,
    TResult Function(_ExpansionChanged value)? expansionChanged,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SignupEvent {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {required String? name,
      required String? firstName,
      required String? lastName,
      required String? email,
      required String? password,
      required String? confirmPassword,
      required bool? showError,
      required bool? isLoading,
      required bool? isExpanded,
      required bool? showSuccessToast,
      required int? panelIndex,
      required Option<Either<AuthFailure, Unit>>? authFailureOrSuccess}) {
    return _SignupState(
      name: name,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      showError: showError,
      isLoading: isLoading,
      isExpanded: isExpanded,
      showSuccessToast: showSuccessToast,
      panelIndex: panelIndex,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  String? get name => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  bool? get showError => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isExpanded => throw _privateConstructorUsedError;
  bool? get showSuccessToast => throw _privateConstructorUsedError;
  int? get panelIndex => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? confirmPassword,
      bool? showError,
      bool? isLoading,
      bool? isExpanded,
      bool? showSuccessToast,
      int? panelIndex,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccess});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? isExpanded = freezed,
    Object? showSuccessToast = freezed,
    Object? panelIndex = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSuccessToast: showSuccessToast == freezed
          ? _value.showSuccessToast
          : showSuccessToast // ignore: cast_nullable_to_non_nullable
              as bool?,
      panelIndex: panelIndex == freezed
          ? _value.panelIndex
          : panelIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? confirmPassword,
      bool? showError,
      bool? isLoading,
      bool? isExpanded,
      bool? showSuccessToast,
      int? panelIndex,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccess});
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? isExpanded = freezed,
    Object? showSuccessToast = freezed,
    Object? panelIndex = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_SignupState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSuccessToast: showSuccessToast == freezed
          ? _value.showSuccessToast
          : showSuccessToast // ignore: cast_nullable_to_non_nullable
              as bool?,
      panelIndex: panelIndex == freezed
          ? _value.panelIndex
          : panelIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.name,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.confirmPassword,
      required this.showError,
      required this.isLoading,
      required this.isExpanded,
      required this.showSuccessToast,
      required this.panelIndex,
      required this.authFailureOrSuccess});

  @override
  final String? name;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final bool? showError;
  @override
  final bool? isLoading;
  @override
  final bool? isExpanded;
  @override
  final bool? showSuccessToast;
  @override
  final int? panelIndex;
  @override
  final Option<Either<AuthFailure, Unit>>? authFailureOrSuccess;

  @override
  String toString() {
    return 'SignupState(name: $name, firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, showError: $showError, isLoading: $isLoading, isExpanded: $isExpanded, showSuccessToast: $showSuccessToast, panelIndex: $panelIndex, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded) &&
            const DeepCollectionEquality()
                .equals(other.showSuccessToast, showSuccessToast) &&
            const DeepCollectionEquality()
                .equals(other.panelIndex, panelIndex) &&
            const DeepCollectionEquality()
                .equals(other.authFailureOrSuccess, authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isExpanded),
      const DeepCollectionEquality().hash(showSuccessToast),
      const DeepCollectionEquality().hash(panelIndex),
      const DeepCollectionEquality().hash(authFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
          {required String? name,
          required String? firstName,
          required String? lastName,
          required String? email,
          required String? password,
          required String? confirmPassword,
          required bool? showError,
          required bool? isLoading,
          required bool? isExpanded,
          required bool? showSuccessToast,
          required int? panelIndex,
          required Option<Either<AuthFailure, Unit>>? authFailureOrSuccess}) =
      _$_SignupState;

  @override
  String? get name;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  bool? get showError;
  @override
  bool? get isLoading;
  @override
  bool? get isExpanded;
  @override
  bool? get showSuccessToast;
  @override
  int? get panelIndex;
  @override
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
