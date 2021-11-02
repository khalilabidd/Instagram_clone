// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  ProfileLoadUser profileLoadUser({required String userId}) {
    return ProfileLoadUser(
      userId: userId,
    );
  }

  ProfileToggleGridView profileToggleGridView({required bool isGridView}) {
    return ProfileToggleGridView(
      isGridView: isGridView,
    );
  }

  ProfileUpdatePosts profileUpdatePosts({required List<Post?> posts}) {
    return ProfileUpdatePosts(
      posts: posts,
    );
  }

  ProfileFollowUser profileFollowUser() {
    return const ProfileFollowUser();
  }

  ProfileUnfollowUser profileUnfollowUser() {
    return const ProfileUnfollowUser();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $ProfileLoadUserCopyWith<$Res> {
  factory $ProfileLoadUserCopyWith(
          ProfileLoadUser value, $Res Function(ProfileLoadUser) then) =
      _$ProfileLoadUserCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$ProfileLoadUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileLoadUserCopyWith<$Res> {
  _$ProfileLoadUserCopyWithImpl(
      ProfileLoadUser _value, $Res Function(ProfileLoadUser) _then)
      : super(_value, (v) => _then(v as ProfileLoadUser));

  @override
  ProfileLoadUser get _value => super._value as ProfileLoadUser;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(ProfileLoadUser(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileLoadUser implements ProfileLoadUser {
  const _$ProfileLoadUser({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileEvent.profileLoadUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileLoadUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $ProfileLoadUserCopyWith<ProfileLoadUser> get copyWith =>
      _$ProfileLoadUserCopyWithImpl<ProfileLoadUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) {
    return profileLoadUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) {
    return profileLoadUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileLoadUser != null) {
      return profileLoadUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) {
    return profileLoadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) {
    return profileLoadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileLoadUser != null) {
      return profileLoadUser(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadUser implements ProfileEvent {
  const factory ProfileLoadUser({required String userId}) = _$ProfileLoadUser;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileLoadUserCopyWith<ProfileLoadUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileToggleGridViewCopyWith<$Res> {
  factory $ProfileToggleGridViewCopyWith(ProfileToggleGridView value,
          $Res Function(ProfileToggleGridView) then) =
      _$ProfileToggleGridViewCopyWithImpl<$Res>;
  $Res call({bool isGridView});
}

/// @nodoc
class _$ProfileToggleGridViewCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileToggleGridViewCopyWith<$Res> {
  _$ProfileToggleGridViewCopyWithImpl(
      ProfileToggleGridView _value, $Res Function(ProfileToggleGridView) _then)
      : super(_value, (v) => _then(v as ProfileToggleGridView));

  @override
  ProfileToggleGridView get _value => super._value as ProfileToggleGridView;

  @override
  $Res call({
    Object? isGridView = freezed,
  }) {
    return _then(ProfileToggleGridView(
      isGridView: isGridView == freezed
          ? _value.isGridView
          : isGridView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileToggleGridView implements ProfileToggleGridView {
  const _$ProfileToggleGridView({required this.isGridView});

  @override
  final bool isGridView;

  @override
  String toString() {
    return 'ProfileEvent.profileToggleGridView(isGridView: $isGridView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileToggleGridView &&
            (identical(other.isGridView, isGridView) ||
                const DeepCollectionEquality()
                    .equals(other.isGridView, isGridView)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGridView);

  @JsonKey(ignore: true)
  @override
  $ProfileToggleGridViewCopyWith<ProfileToggleGridView> get copyWith =>
      _$ProfileToggleGridViewCopyWithImpl<ProfileToggleGridView>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) {
    return profileToggleGridView(isGridView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) {
    return profileToggleGridView?.call(isGridView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileToggleGridView != null) {
      return profileToggleGridView(isGridView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) {
    return profileToggleGridView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) {
    return profileToggleGridView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileToggleGridView != null) {
      return profileToggleGridView(this);
    }
    return orElse();
  }
}

abstract class ProfileToggleGridView implements ProfileEvent {
  const factory ProfileToggleGridView({required bool isGridView}) =
      _$ProfileToggleGridView;

  bool get isGridView => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileToggleGridViewCopyWith<ProfileToggleGridView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdatePostsCopyWith<$Res> {
  factory $ProfileUpdatePostsCopyWith(
          ProfileUpdatePosts value, $Res Function(ProfileUpdatePosts) then) =
      _$ProfileUpdatePostsCopyWithImpl<$Res>;
  $Res call({List<Post?> posts});
}

/// @nodoc
class _$ProfileUpdatePostsCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileUpdatePostsCopyWith<$Res> {
  _$ProfileUpdatePostsCopyWithImpl(
      ProfileUpdatePosts _value, $Res Function(ProfileUpdatePosts) _then)
      : super(_value, (v) => _then(v as ProfileUpdatePosts));

  @override
  ProfileUpdatePosts get _value => super._value as ProfileUpdatePosts;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(ProfileUpdatePosts(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post?>,
    ));
  }
}

/// @nodoc

class _$ProfileUpdatePosts implements ProfileUpdatePosts {
  const _$ProfileUpdatePosts({required this.posts});

  @override
  final List<Post?> posts;

  @override
  String toString() {
    return 'ProfileEvent.profileUpdatePosts(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileUpdatePosts &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $ProfileUpdatePostsCopyWith<ProfileUpdatePosts> get copyWith =>
      _$ProfileUpdatePostsCopyWithImpl<ProfileUpdatePosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) {
    return profileUpdatePosts(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) {
    return profileUpdatePosts?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileUpdatePosts != null) {
      return profileUpdatePosts(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) {
    return profileUpdatePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) {
    return profileUpdatePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileUpdatePosts != null) {
      return profileUpdatePosts(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdatePosts implements ProfileEvent {
  const factory ProfileUpdatePosts({required List<Post?> posts}) =
      _$ProfileUpdatePosts;

  List<Post?> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdatePostsCopyWith<ProfileUpdatePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFollowUserCopyWith<$Res> {
  factory $ProfileFollowUserCopyWith(
          ProfileFollowUser value, $Res Function(ProfileFollowUser) then) =
      _$ProfileFollowUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFollowUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileFollowUserCopyWith<$Res> {
  _$ProfileFollowUserCopyWithImpl(
      ProfileFollowUser _value, $Res Function(ProfileFollowUser) _then)
      : super(_value, (v) => _then(v as ProfileFollowUser));

  @override
  ProfileFollowUser get _value => super._value as ProfileFollowUser;
}

/// @nodoc

class _$ProfileFollowUser implements ProfileFollowUser {
  const _$ProfileFollowUser();

  @override
  String toString() {
    return 'ProfileEvent.profileFollowUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileFollowUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) {
    return profileFollowUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) {
    return profileFollowUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileFollowUser != null) {
      return profileFollowUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) {
    return profileFollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) {
    return profileFollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileFollowUser != null) {
      return profileFollowUser(this);
    }
    return orElse();
  }
}

abstract class ProfileFollowUser implements ProfileEvent {
  const factory ProfileFollowUser() = _$ProfileFollowUser;
}

/// @nodoc
abstract class $ProfileUnfollowUserCopyWith<$Res> {
  factory $ProfileUnfollowUserCopyWith(
          ProfileUnfollowUser value, $Res Function(ProfileUnfollowUser) then) =
      _$ProfileUnfollowUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUnfollowUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileUnfollowUserCopyWith<$Res> {
  _$ProfileUnfollowUserCopyWithImpl(
      ProfileUnfollowUser _value, $Res Function(ProfileUnfollowUser) _then)
      : super(_value, (v) => _then(v as ProfileUnfollowUser));

  @override
  ProfileUnfollowUser get _value => super._value as ProfileUnfollowUser;
}

/// @nodoc

class _$ProfileUnfollowUser implements ProfileUnfollowUser {
  const _$ProfileUnfollowUser();

  @override
  String toString() {
    return 'ProfileEvent.profileUnfollowUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileUnfollowUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) profileLoadUser,
    required TResult Function(bool isGridView) profileToggleGridView,
    required TResult Function(List<Post?> posts) profileUpdatePosts,
    required TResult Function() profileFollowUser,
    required TResult Function() profileUnfollowUser,
  }) {
    return profileUnfollowUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
  }) {
    return profileUnfollowUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? profileLoadUser,
    TResult Function(bool isGridView)? profileToggleGridView,
    TResult Function(List<Post?> posts)? profileUpdatePosts,
    TResult Function()? profileFollowUser,
    TResult Function()? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileUnfollowUser != null) {
      return profileUnfollowUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadUser value) profileLoadUser,
    required TResult Function(ProfileToggleGridView value)
        profileToggleGridView,
    required TResult Function(ProfileUpdatePosts value) profileUpdatePosts,
    required TResult Function(ProfileFollowUser value) profileFollowUser,
    required TResult Function(ProfileUnfollowUser value) profileUnfollowUser,
  }) {
    return profileUnfollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
  }) {
    return profileUnfollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadUser value)? profileLoadUser,
    TResult Function(ProfileToggleGridView value)? profileToggleGridView,
    TResult Function(ProfileUpdatePosts value)? profileUpdatePosts,
    TResult Function(ProfileFollowUser value)? profileFollowUser,
    TResult Function(ProfileUnfollowUser value)? profileUnfollowUser,
    required TResult orElse(),
  }) {
    if (profileUnfollowUser != null) {
      return profileUnfollowUser(this);
    }
    return orElse();
  }
}

abstract class ProfileUnfollowUser implements ProfileEvent {
  const factory ProfileUnfollowUser() = _$ProfileUnfollowUser;
}
