import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_controller.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_event.dart';
import 'feed_event.dart';

part 'feed_state.dart';

class FeedController extends StateNotifier<FeedState> {
  final PostRepository _postRepository;
  final AuthStateController _authStateController;
  final LikedPostsController _likedPostsController;

  FeedController(this._postRepository, this._authStateController,
      this._likedPostsController)
      : super(FeedState.initial());

  Future mapEventsToStates(FeedEvent event) async {
    return event.map(feedFetchPosts: (value) async {
      state = state.copyWith(posts: [], status: FeedStatus.loading);
      try {
        final posts = await _postRepository.getUserFeed(
            userId: _authStateController.state.user!.uid);

        _likedPostsController
            .mapEventsToStates(const LikedPostsEvent.clearAllLikedPosts());

        final likedPostIds = await _postRepository.getLikedPostIds(
          userId: _authStateController.state.user!.uid,
          posts: posts,
        );
        _likedPostsController.mapEventsToStates(
            LikedPostsEvent.updateLikedPosts(postIds: likedPostIds));

        state = state.copyWith(posts: posts, status: FeedStatus.loaded);
      } catch (err) {
        state = state.copyWith(
          status: FeedStatus.error,
          failure: const Failure(message: 'We were unable to load your feed.'),
        );
      }
    }, feedPaginatePosts: (value) async {
      state = state.copyWith(status: FeedStatus.paginating);
      try {
        final lastPostId = state.posts.isNotEmpty ? state.posts.last!.id : null;

        final posts = await _postRepository.getUserFeed(
          userId: _authStateController.state.user!.uid,
          lastPostId: lastPostId,
        );
        final updatedPosts = List<Post?>.from(state.posts)..addAll(posts);

        final likedPostIds = await _postRepository.getLikedPostIds(
          userId: _authStateController.state.user!.uid,
          posts: posts,
        );
        _likedPostsController.mapEventsToStates(
            LikedPostsEvent.updateLikedPosts(postIds: likedPostIds));

        state = state.copyWith(posts: updatedPosts, status: FeedStatus.loaded);
      } catch (err) {
        state = state.copyWith(
          status: FeedStatus.error,
          failure: const Failure(message: 'We were unable to load your feed.'),
        );
      }
    });
  }
}
