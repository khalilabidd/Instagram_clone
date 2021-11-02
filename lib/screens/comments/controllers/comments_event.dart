import 'package:instagram_clone/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_event.freezed.dart';

@freezed
class CommentsEvent with _$CommentsEvent {
  const factory CommentsEvent.commentsFetchComments({required Post post}) =
  CommentsFetchComments;

  const factory CommentsEvent.commentsUpdateComments({required List<Comment?> comments}) =
  CommentsUpdateComments;

  const factory CommentsEvent.commentsPostComment({required String content}) =
  CommentsPostComment;

}

