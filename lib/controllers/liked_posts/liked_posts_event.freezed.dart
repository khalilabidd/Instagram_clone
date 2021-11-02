// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'liked_posts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikedPostsEventTearOff {
  const _$LikedPostsEventTearOff();

  UpdateLikedPosts updateLikedPosts({required Set<String> postIds}) {
    return UpdateLikedPosts(
      postIds: postIds,
    );
  }

  LikePost likePost({required Post post}) {
    return LikePost(
      post: post,
    );
  }

  UnlikePost unlikePost({required Post post}) {
    return UnlikePost(
      post: post,
    );
  }

  ClearAllLikedPosts clearAllLikedPosts() {
    return const ClearAllLikedPosts();
  }
}

/// @nodoc
const $LikedPostsEvent = _$LikedPostsEventTearOff();

/// @nodoc
mixin _$LikedPostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<String> postIds) updateLikedPosts,
    required TResult Function(Post post) likePost,
    required TResult Function(Post post) unlikePost,
    required TResult Function() clearAllLikedPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLikedPosts value) updateLikedPosts,
    required TResult Function(LikePost value) likePost,
    required TResult Function(UnlikePost value) unlikePost,
    required TResult Function(ClearAllLikedPosts value) clearAllLikedPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedPostsEventCopyWith<$Res> {
  factory $LikedPostsEventCopyWith(
          LikedPostsEvent value, $Res Function(LikedPostsEvent) then) =
      _$LikedPostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedPostsEventCopyWithImpl<$Res>
    implements $LikedPostsEventCopyWith<$Res> {
  _$LikedPostsEventCopyWithImpl(this._value, this._then);

  final LikedPostsEvent _value;
  // ignore: unused_field
  final $Res Function(LikedPostsEvent) _then;
}

/// @nodoc
abstract class $UpdateLikedPostsCopyWith<$Res> {
  factory $UpdateLikedPostsCopyWith(
          UpdateLikedPosts value, $Res Function(UpdateLikedPosts) then) =
      _$UpdateLikedPostsCopyWithImpl<$Res>;
  $Res call({Set<String> postIds});
}

/// @nodoc
class _$UpdateLikedPostsCopyWithImpl<$Res>
    extends _$LikedPostsEventCopyWithImpl<$Res>
    implements $UpdateLikedPostsCopyWith<$Res> {
  _$UpdateLikedPostsCopyWithImpl(
      UpdateLikedPosts _value, $Res Function(UpdateLikedPosts) _then)
      : super(_value, (v) => _then(v as UpdateLikedPosts));

  @override
  UpdateLikedPosts get _value => super._value as UpdateLikedPosts;

  @override
  $Res call({
    Object? postIds = freezed,
  }) {
    return _then(UpdateLikedPosts(
      postIds: postIds == freezed
          ? _value.postIds
          : postIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$UpdateLikedPosts implements UpdateLikedPosts {
  const _$UpdateLikedPosts({required this.postIds});

  @override
  final Set<String> postIds;

  @override
  String toString() {
    return 'LikedPostsEvent.updateLikedPosts(postIds: $postIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLikedPosts &&
            (identical(other.postIds, postIds) ||
                const DeepCollectionEquality().equals(other.postIds, postIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postIds);

  @JsonKey(ignore: true)
  @override
  $UpdateLikedPostsCopyWith<UpdateLikedPosts> get copyWith =>
      _$UpdateLikedPostsCopyWithImpl<UpdateLikedPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<String> postIds) updateLikedPosts,
    required TResult Function(Post post) likePost,
    required TResult Function(Post post) unlikePost,
    required TResult Function() clearAllLikedPosts,
  }) {
    return updateLikedPosts(postIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
  }) {
    return updateLikedPosts?.call(postIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (updateLikedPosts != null) {
      return updateLikedPosts(postIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLikedPosts value) updateLikedPosts,
    required TResult Function(LikePost value) likePost,
    required TResult Function(UnlikePost value) unlikePost,
    required TResult Function(ClearAllLikedPosts value) clearAllLikedPosts,
  }) {
    return updateLikedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
  }) {
    return updateLikedPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (updateLikedPosts != null) {
      return updateLikedPosts(this);
    }
    return orElse();
  }
}

abstract class UpdateLikedPosts implements LikedPostsEvent {
  const factory UpdateLikedPosts({required Set<String> postIds}) =
      _$UpdateLikedPosts;

  Set<String> get postIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateLikedPostsCopyWith<UpdateLikedPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePostCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) then) =
      _$LikePostCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$LikePostCopyWithImpl<$Res> extends _$LikedPostsEventCopyWithImpl<$Res>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(LikePost _value, $Res Function(LikePost) _then)
      : super(_value, (v) => _then(v as LikePost));

  @override
  LikePost get _value => super._value as LikePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(LikePost(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$LikePost implements LikePost {
  const _$LikePost({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'LikedPostsEvent.likePost(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePost &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @JsonKey(ignore: true)
  @override
  $LikePostCopyWith<LikePost> get copyWith =>
      _$LikePostCopyWithImpl<LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<String> postIds) updateLikedPosts,
    required TResult Function(Post post) likePost,
    required TResult Function(Post post) unlikePost,
    required TResult Function() clearAllLikedPosts,
  }) {
    return likePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
  }) {
    return likePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLikedPosts value) updateLikedPosts,
    required TResult Function(LikePost value) likePost,
    required TResult Function(UnlikePost value) unlikePost,
    required TResult Function(ClearAllLikedPosts value) clearAllLikedPosts,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class LikePost implements LikedPostsEvent {
  const factory LikePost({required Post post}) = _$LikePost;

  Post get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikePostCopyWith<LikePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlikePostCopyWith<$Res> {
  factory $UnlikePostCopyWith(
          UnlikePost value, $Res Function(UnlikePost) then) =
      _$UnlikePostCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$UnlikePostCopyWithImpl<$Res> extends _$LikedPostsEventCopyWithImpl<$Res>
    implements $UnlikePostCopyWith<$Res> {
  _$UnlikePostCopyWithImpl(UnlikePost _value, $Res Function(UnlikePost) _then)
      : super(_value, (v) => _then(v as UnlikePost));

  @override
  UnlikePost get _value => super._value as UnlikePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(UnlikePost(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$UnlikePost implements UnlikePost {
  const _$UnlikePost({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'LikedPostsEvent.unlikePost(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnlikePost &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @JsonKey(ignore: true)
  @override
  $UnlikePostCopyWith<UnlikePost> get copyWith =>
      _$UnlikePostCopyWithImpl<UnlikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<String> postIds) updateLikedPosts,
    required TResult Function(Post post) likePost,
    required TResult Function(Post post) unlikePost,
    required TResult Function() clearAllLikedPosts,
  }) {
    return unlikePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
  }) {
    return unlikePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (unlikePost != null) {
      return unlikePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLikedPosts value) updateLikedPosts,
    required TResult Function(LikePost value) likePost,
    required TResult Function(UnlikePost value) unlikePost,
    required TResult Function(ClearAllLikedPosts value) clearAllLikedPosts,
  }) {
    return unlikePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
  }) {
    return unlikePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (unlikePost != null) {
      return unlikePost(this);
    }
    return orElse();
  }
}

abstract class UnlikePost implements LikedPostsEvent {
  const factory UnlikePost({required Post post}) = _$UnlikePost;

  Post get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnlikePostCopyWith<UnlikePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearAllLikedPostsCopyWith<$Res> {
  factory $ClearAllLikedPostsCopyWith(
          ClearAllLikedPosts value, $Res Function(ClearAllLikedPosts) then) =
      _$ClearAllLikedPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearAllLikedPostsCopyWithImpl<$Res>
    extends _$LikedPostsEventCopyWithImpl<$Res>
    implements $ClearAllLikedPostsCopyWith<$Res> {
  _$ClearAllLikedPostsCopyWithImpl(
      ClearAllLikedPosts _value, $Res Function(ClearAllLikedPosts) _then)
      : super(_value, (v) => _then(v as ClearAllLikedPosts));

  @override
  ClearAllLikedPosts get _value => super._value as ClearAllLikedPosts;
}

/// @nodoc

class _$ClearAllLikedPosts implements ClearAllLikedPosts {
  const _$ClearAllLikedPosts();

  @override
  String toString() {
    return 'LikedPostsEvent.clearAllLikedPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearAllLikedPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<String> postIds) updateLikedPosts,
    required TResult Function(Post post) likePost,
    required TResult Function(Post post) unlikePost,
    required TResult Function() clearAllLikedPosts,
  }) {
    return clearAllLikedPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
  }) {
    return clearAllLikedPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<String> postIds)? updateLikedPosts,
    TResult Function(Post post)? likePost,
    TResult Function(Post post)? unlikePost,
    TResult Function()? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (clearAllLikedPosts != null) {
      return clearAllLikedPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLikedPosts value) updateLikedPosts,
    required TResult Function(LikePost value) likePost,
    required TResult Function(UnlikePost value) unlikePost,
    required TResult Function(ClearAllLikedPosts value) clearAllLikedPosts,
  }) {
    return clearAllLikedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
  }) {
    return clearAllLikedPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLikedPosts value)? updateLikedPosts,
    TResult Function(LikePost value)? likePost,
    TResult Function(UnlikePost value)? unlikePost,
    TResult Function(ClearAllLikedPosts value)? clearAllLikedPosts,
    required TResult orElse(),
  }) {
    if (clearAllLikedPosts != null) {
      return clearAllLikedPosts(this);
    }
    return orElse();
  }
}

abstract class ClearAllLikedPosts implements LikedPostsEvent {
  const factory ClearAllLikedPosts() = _$ClearAllLikedPosts;
}
