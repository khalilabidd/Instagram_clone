import 'package:equatable/equatable.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_event.dart';

part 'liked_posts_state.dart';

class LikedPostsController extends StateNotifier<LikedPostsState> {
  final PostRepository _postRepository;
  final AuthStateController _authStateController;

  LikedPostsController(this._postRepository, this._authStateController)
      : super(LikedPostsState.initial());

  Future mapEventsToStates(LikedPostsEvent events) async {
    return events.map(updateLikedPosts: (value) async {
      state = state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)
          ..addAll(value.postIds),
      );
    }, likePost: (value) async {
      _postRepository.createLike(
        post: value.post,
        userId: _authStateController.state.user!.uid,
      );
      state = state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)..add(value.post.id!),
        recentlyLikedPostIds: Set<String>.from(state.recentlyLikedPostIds)
          ..add(value.post.id!),
      );
    }, unlikePost: (value) async {
      _postRepository.deleteLike(
        postId: value.post.id!,
        userId: _authStateController.state.user!.uid,
      );

      state = state.copyWith(
        likedPostIds: Set<String>.from(state.likedPostIds)
          ..remove(value.post.id),
        recentlyLikedPostIds: Set<String>.from(state.recentlyLikedPostIds)
          ..remove(value.post.id),
      );
    }, clearAllLikedPosts: (value) async {
      state = LikedPostsState.initial();
    });
  }
}
