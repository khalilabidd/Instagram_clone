// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comments_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentsEventTearOff {
  const _$CommentsEventTearOff();

  CommentsFetchComments commentsFetchComments({required Post post}) {
    return CommentsFetchComments(
      post: post,
    );
  }

  CommentsUpdateComments commentsUpdateComments(
      {required List<Comment?> comments}) {
    return CommentsUpdateComments(
      comments: comments,
    );
  }

  CommentsPostComment commentsPostComment({required String content}) {
    return CommentsPostComment(
      content: content,
    );
  }
}

/// @nodoc
const $CommentsEvent = _$CommentsEventTearOff();

/// @nodoc
mixin _$CommentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) commentsFetchComments,
    required TResult Function(List<Comment?> comments) commentsUpdateComments,
    required TResult Function(String content) commentsPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentsFetchComments value)
        commentsFetchComments,
    required TResult Function(CommentsUpdateComments value)
        commentsUpdateComments,
    required TResult Function(CommentsPostComment value) commentsPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  final CommentsEvent _value;
  // ignore: unused_field
  final $Res Function(CommentsEvent) _then;
}

/// @nodoc
abstract class $CommentsFetchCommentsCopyWith<$Res> {
  factory $CommentsFetchCommentsCopyWith(CommentsFetchComments value,
          $Res Function(CommentsFetchComments) then) =
      _$CommentsFetchCommentsCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$CommentsFetchCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsFetchCommentsCopyWith<$Res> {
  _$CommentsFetchCommentsCopyWithImpl(
      CommentsFetchComments _value, $Res Function(CommentsFetchComments) _then)
      : super(_value, (v) => _then(v as CommentsFetchComments));

  @override
  CommentsFetchComments get _value => super._value as CommentsFetchComments;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(CommentsFetchComments(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$CommentsFetchComments implements CommentsFetchComments {
  const _$CommentsFetchComments({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'CommentsEvent.commentsFetchComments(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentsFetchComments &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @JsonKey(ignore: true)
  @override
  $CommentsFetchCommentsCopyWith<CommentsFetchComments> get copyWith =>
      _$CommentsFetchCommentsCopyWithImpl<CommentsFetchComments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) commentsFetchComments,
    required TResult Function(List<Comment?> comments) commentsUpdateComments,
    required TResult Function(String content) commentsPostComment,
  }) {
    return commentsFetchComments(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
  }) {
    return commentsFetchComments?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsFetchComments != null) {
      return commentsFetchComments(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentsFetchComments value)
        commentsFetchComments,
    required TResult Function(CommentsUpdateComments value)
        commentsUpdateComments,
    required TResult Function(CommentsPostComment value) commentsPostComment,
  }) {
    return commentsFetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
  }) {
    return commentsFetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsFetchComments != null) {
      return commentsFetchComments(this);
    }
    return orElse();
  }
}

abstract class CommentsFetchComments implements CommentsEvent {
  const factory CommentsFetchComments({required Post post}) =
      _$CommentsFetchComments;

  Post get post => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsFetchCommentsCopyWith<CommentsFetchComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsUpdateCommentsCopyWith<$Res> {
  factory $CommentsUpdateCommentsCopyWith(CommentsUpdateComments value,
          $Res Function(CommentsUpdateComments) then) =
      _$CommentsUpdateCommentsCopyWithImpl<$Res>;
  $Res call({List<Comment?> comments});
}

/// @nodoc
class _$CommentsUpdateCommentsCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsUpdateCommentsCopyWith<$Res> {
  _$CommentsUpdateCommentsCopyWithImpl(CommentsUpdateComments _value,
      $Res Function(CommentsUpdateComments) _then)
      : super(_value, (v) => _then(v as CommentsUpdateComments));

  @override
  CommentsUpdateComments get _value => super._value as CommentsUpdateComments;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(CommentsUpdateComments(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>,
    ));
  }
}

/// @nodoc

class _$CommentsUpdateComments implements CommentsUpdateComments {
  const _$CommentsUpdateComments({required this.comments});

  @override
  final List<Comment?> comments;

  @override
  String toString() {
    return 'CommentsEvent.commentsUpdateComments(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentsUpdateComments &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  $CommentsUpdateCommentsCopyWith<CommentsUpdateComments> get copyWith =>
      _$CommentsUpdateCommentsCopyWithImpl<CommentsUpdateComments>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) commentsFetchComments,
    required TResult Function(List<Comment?> comments) commentsUpdateComments,
    required TResult Function(String content) commentsPostComment,
  }) {
    return commentsUpdateComments(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
  }) {
    return commentsUpdateComments?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsUpdateComments != null) {
      return commentsUpdateComments(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentsFetchComments value)
        commentsFetchComments,
    required TResult Function(CommentsUpdateComments value)
        commentsUpdateComments,
    required TResult Function(CommentsPostComment value) commentsPostComment,
  }) {
    return commentsUpdateComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
  }) {
    return commentsUpdateComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsUpdateComments != null) {
      return commentsUpdateComments(this);
    }
    return orElse();
  }
}

abstract class CommentsUpdateComments implements CommentsEvent {
  const factory CommentsUpdateComments({required List<Comment?> comments}) =
      _$CommentsUpdateComments;

  List<Comment?> get comments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsUpdateCommentsCopyWith<CommentsUpdateComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsPostCommentCopyWith<$Res> {
  factory $CommentsPostCommentCopyWith(
          CommentsPostComment value, $Res Function(CommentsPostComment) then) =
      _$CommentsPostCommentCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$CommentsPostCommentCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res>
    implements $CommentsPostCommentCopyWith<$Res> {
  _$CommentsPostCommentCopyWithImpl(
      CommentsPostComment _value, $Res Function(CommentsPostComment) _then)
      : super(_value, (v) => _then(v as CommentsPostComment));

  @override
  CommentsPostComment get _value => super._value as CommentsPostComment;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(CommentsPostComment(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentsPostComment implements CommentsPostComment {
  const _$CommentsPostComment({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'CommentsEvent.commentsPostComment(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentsPostComment &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  $CommentsPostCommentCopyWith<CommentsPostComment> get copyWith =>
      _$CommentsPostCommentCopyWithImpl<CommentsPostComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) commentsFetchComments,
    required TResult Function(List<Comment?> comments) commentsUpdateComments,
    required TResult Function(String content) commentsPostComment,
  }) {
    return commentsPostComment(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
  }) {
    return commentsPostComment?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? commentsFetchComments,
    TResult Function(List<Comment?> comments)? commentsUpdateComments,
    TResult Function(String content)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsPostComment != null) {
      return commentsPostComment(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommentsFetchComments value)
        commentsFetchComments,
    required TResult Function(CommentsUpdateComments value)
        commentsUpdateComments,
    required TResult Function(CommentsPostComment value) commentsPostComment,
  }) {
    return commentsPostComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
  }) {
    return commentsPostComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommentsFetchComments value)? commentsFetchComments,
    TResult Function(CommentsUpdateComments value)? commentsUpdateComments,
    TResult Function(CommentsPostComment value)? commentsPostComment,
    required TResult orElse(),
  }) {
    if (commentsPostComment != null) {
      return commentsPostComment(this);
    }
    return orElse();
  }
}

abstract class CommentsPostComment implements CommentsEvent {
  const factory CommentsPostComment({required String content}) =
      _$CommentsPostComment;

  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsPostCommentCopyWith<CommentsPostComment> get copyWith =>
      throw _privateConstructorUsedError;
}
