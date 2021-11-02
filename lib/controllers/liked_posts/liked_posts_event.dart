import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/models/models.dart';
part 'liked_posts_event.freezed.dart';

@freezed
class LikedPostsEvent with _$LikedPostsEvent {
  const factory LikedPostsEvent.updateLikedPosts({required Set<String> postIds}) =
  UpdateLikedPosts;

  const factory LikedPostsEvent.likePost({required Post post}) =
  LikePost;

  const factory LikedPostsEvent.unlikePost({required Post post}) =
  UnlikePost;

  const factory LikedPostsEvent.clearAllLikedPosts() =
  ClearAllLikedPosts;
}