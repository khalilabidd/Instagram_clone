// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthUserChanged authUserChanged({required auth.User? user}) {
    return AuthUserChanged(
      user: user,
    );
  }

  AuthLogoutRequested authLogoutRequested() {
    return const AuthLogoutRequested();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(auth.User? user) authUserChanged,
    required TResult Function() authLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthUserChangedCopyWith<$Res> {
  factory $AuthUserChangedCopyWith(
          AuthUserChanged value, $Res Function(AuthUserChanged) then) =
      _$AuthUserChangedCopyWithImpl<$Res>;
  $Res call({auth.User? user});
}

/// @nodoc
class _$AuthUserChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthUserChangedCopyWith<$Res> {
  _$AuthUserChangedCopyWithImpl(
      AuthUserChanged _value, $Res Function(AuthUserChanged) _then)
      : super(_value, (v) => _then(v as AuthUserChanged));

  @override
  AuthUserChanged get _value => super._value as AuthUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthUserChanged(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as auth.User?,
    ));
  }
}

/// @nodoc

class _$AuthUserChanged implements AuthUserChanged {
  const _$AuthUserChanged({required this.user});

  @override
  final auth.User? user;

  @override
  String toString() {
    return 'AuthEvent.authUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthUserChanged &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthUserChangedCopyWith<AuthUserChanged> get copyWith =>
      _$AuthUserChangedCopyWithImpl<AuthUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(auth.User? user) authUserChanged,
    required TResult Function() authLogoutRequested,
  }) {
    return authUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
  }) {
    return authUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
    required TResult orElse(),
  }) {
    if (authUserChanged != null) {
      return authUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
  }) {
    return authUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
  }) {
    return authUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    required TResult orElse(),
  }) {
    if (authUserChanged != null) {
      return authUserChanged(this);
    }
    return orElse();
  }
}

abstract class AuthUserChanged implements AuthEvent {
  const factory AuthUserChanged({required auth.User? user}) = _$AuthUserChanged;

  auth.User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserChangedCopyWith<AuthUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutRequestedCopyWith<$Res> {
  factory $AuthLogoutRequestedCopyWith(
          AuthLogoutRequested value, $Res Function(AuthLogoutRequested) then) =
      _$AuthLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLogoutRequestedCopyWith<$Res> {
  _$AuthLogoutRequestedCopyWithImpl(
      AuthLogoutRequested _value, $Res Function(AuthLogoutRequested) _then)
      : super(_value, (v) => _then(v as AuthLogoutRequested));

  @override
  AuthLogoutRequested get _value => super._value as AuthLogoutRequested;
}

/// @nodoc

class _$AuthLogoutRequested implements AuthLogoutRequested {
  const _$AuthLogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.authLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(auth.User? user) authUserChanged,
    required TResult Function() authLogoutRequested,
  }) {
    return authLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
  }) {
    return authLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(auth.User? user)? authUserChanged,
    TResult Function()? authLogoutRequested,
    required TResult orElse(),
  }) {
    if (authLogoutRequested != null) {
      return authLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUserChanged value) authUserChanged,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
  }) {
    return authLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
  }) {
    return authLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUserChanged value)? authUserChanged,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    required TResult orElse(),
  }) {
    if (authLogoutRequested != null) {
      return authLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutRequested implements AuthEvent {
  const factory AuthLogoutRequested() = _$AuthLogoutRequested;
}
