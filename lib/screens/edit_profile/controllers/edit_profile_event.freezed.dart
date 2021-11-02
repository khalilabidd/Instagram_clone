// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

  ProfileImageChanged profileImageChanged({required File image}) {
    return ProfileImageChanged(
      image: image,
    );
  }

  UsernameChanged usernameChanged({required String username}) {
    return UsernameChanged(
      username: username,
    );
  }

  BioChanged bioChanged({required String bio}) {
    return BioChanged(
      bio: bio,
    );
  }

  Submit submit() {
    return const Submit();
  }
}

/// @nodoc
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) profileImageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImageChanged value) profileImageChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BioChanged value) bioChanged,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

/// @nodoc
abstract class $ProfileImageChangedCopyWith<$Res> {
  factory $ProfileImageChangedCopyWith(
          ProfileImageChanged value, $Res Function(ProfileImageChanged) then) =
      _$ProfileImageChangedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class _$ProfileImageChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $ProfileImageChangedCopyWith<$Res> {
  _$ProfileImageChangedCopyWithImpl(
      ProfileImageChanged _value, $Res Function(ProfileImageChanged) _then)
      : super(_value, (v) => _then(v as ProfileImageChanged));

  @override
  ProfileImageChanged get _value => super._value as ProfileImageChanged;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(ProfileImageChanged(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ProfileImageChanged implements ProfileImageChanged {
  const _$ProfileImageChanged({required this.image});

  @override
  final File image;

  @override
  String toString() {
    return 'EditProfileEvent.profileImageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileImageChanged &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $ProfileImageChangedCopyWith<ProfileImageChanged> get copyWith =>
      _$ProfileImageChangedCopyWithImpl<ProfileImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) profileImageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function() submit,
  }) {
    return profileImageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
  }) {
    return profileImageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (profileImageChanged != null) {
      return profileImageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImageChanged value) profileImageChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BioChanged value) bioChanged,
    required TResult Function(Submit value) submit,
  }) {
    return profileImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
  }) {
    return profileImageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (profileImageChanged != null) {
      return profileImageChanged(this);
    }
    return orElse();
  }
}

abstract class ProfileImageChanged implements EditProfileEvent {
  const factory ProfileImageChanged({required File image}) =
      _$ProfileImageChanged;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageChangedCopyWith<ProfileImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(UsernameChanged(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'EditProfileEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) profileImageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function() submit,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImageChanged value) profileImageChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BioChanged value) bioChanged,
    required TResult Function(Submit value) submit,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements EditProfileEvent {
  const factory UsernameChanged({required String username}) = _$UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BioChangedCopyWith<$Res> {
  factory $BioChangedCopyWith(
          BioChanged value, $Res Function(BioChanged) then) =
      _$BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

/// @nodoc
class _$BioChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $BioChangedCopyWith<$Res> {
  _$BioChangedCopyWithImpl(BioChanged _value, $Res Function(BioChanged) _then)
      : super(_value, (v) => _then(v as BioChanged));

  @override
  BioChanged get _value => super._value as BioChanged;

  @override
  $Res call({
    Object? bio = freezed,
  }) {
    return _then(BioChanged(
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BioChanged implements BioChanged {
  const _$BioChanged({required this.bio});

  @override
  final String bio;

  @override
  String toString() {
    return 'EditProfileEvent.bioChanged(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BioChanged &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bio);

  @JsonKey(ignore: true)
  @override
  $BioChangedCopyWith<BioChanged> get copyWith =>
      _$BioChangedCopyWithImpl<BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) profileImageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function() submit,
  }) {
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
  }) {
    return bioChanged?.call(bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImageChanged value) profileImageChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BioChanged value) bioChanged,
    required TResult Function(Submit value) submit,
  }) {
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
  }) {
    return bioChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class BioChanged implements EditProfileEvent {
  const factory BioChanged({required String bio}) = _$BioChanged;

  String get bio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BioChangedCopyWith<BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) then) =
      _$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(Submit _value, $Res Function(Submit) _then)
      : super(_value, (v) => _then(v as Submit));

  @override
  Submit get _value => super._value as Submit;
}

/// @nodoc

class _$Submit implements Submit {
  const _$Submit();

  @override
  String toString() {
    return 'EditProfileEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) profileImageChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? profileImageChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImageChanged value) profileImageChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(BioChanged value) bioChanged,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImageChanged value)? profileImageChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(BioChanged value)? bioChanged,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements EditProfileEvent {
  const factory Submit() = _$Submit;
}
