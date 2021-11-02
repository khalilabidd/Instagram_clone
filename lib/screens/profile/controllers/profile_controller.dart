import 'dart:async';

import 'package:instagram_clone/controllers/liked_posts/liked_posts_event.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_controller.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';

import 'profile_event.dart';

part 'profile_state.dart';

class ProfileController extends StateNotifier<ProfileState> {
  final UserRepository _userRepository;
  final PostRepository _postRepository;
  final AuthStateController _authController;
  final LikedPostsController _likedPostsController;

  StreamSubscription<List<Future<Post?>>>? _postsSubscription;

  ProfileController(this._userRepository, this._postRepository,
      this._authController, this._likedPostsController)
      : super(ProfileState.initial());

  @override
  void dispose() {
    _postsSubscription?.cancel();
    return super.dispose();
  }

  Future mapEventsToStates(
    ProfileEvent event,
  ) async {
    return event.map(
      profileLoadUser: (value) async {
        state = state.copyWith(status: ProfileStatus.loading);
        try {
          final user =
              await _userRepository.getUserWithId(userId: value.userId);
          final isCurrentUser = _authController.state.user!.uid == value.userId;

          final isFollowing = await _userRepository.isFollowing(
            userId: _authController.state.user!.uid,
            otherUserId: value.userId,
          );

          _postsSubscription?.cancel();
          _postsSubscription = _postRepository
              .getUserPosts(userId: value.userId)
              .listen((posts) async {
            final allPosts = await Future.wait(posts);
            state = state.copyWith(posts: allPosts);
            final likedPostIds = await _postRepository.getLikedPostIds(
              userId: _authController.state.user!.uid,
              posts: allPosts,
            );
            _likedPostsController.mapEventsToStates(
                LikedPostsEvent.updateLikedPosts(postIds: likedPostIds));
          });

          state = state.copyWith(
            user: user,
            isCurrentUser: isCurrentUser,
            isFollowing: isFollowing,
            status: ProfileStatus.loaded,
          );
        } catch (err) {
          state = state.copyWith(
            status: ProfileStatus.error,
            failure:
                const Failure(message: 'We were unable to load this profile.'),
          );
        }
      },
      profileToggleGridView: (value) async {
        state = state.copyWith(isGridView: value.isGridView);
      },
      profileUpdatePosts: (value) async {
        state = state.copyWith(posts: value.posts);
        final likedPostIds = await _postRepository.getLikedPostIds(
          userId: _authController.state.user!.uid,
          posts: value.posts,
        );
        _likedPostsController.mapEventsToStates(
            LikedPostsEvent.updateLikedPosts(postIds: likedPostIds));
      },
      profileFollowUser: (value) async {
        try {
          _userRepository.followUser(
            userId: _authController.state.user!.uid,
            followUserId: state.user.id,
          );
          final updatedUser =
              state.user.copyWith(followers: state.user.followers + 1);
          state = state.copyWith(user: updatedUser, isFollowing: true);
        } catch (err) {
          state = state.copyWith(
            status: ProfileStatus.error,
            failure: const Failure(
                message: 'Something went wrong! Please try again.'),
          );
        }
      },
      profileUnfollowUser: (value) async {
        try {
          _userRepository.unfollowUser(
            userId: _authController.state.user!.uid,
            unfollowUserId: state.user.id,
          );
          final updatedUser =
              state.user.copyWith(followers: state.user.followers - 1);
          state = state.copyWith(user: updatedUser, isFollowing: false);
        } catch (err) {
          state = state.copyWith(
            status: ProfileStatus.error,
            failure: const Failure(
                message: 'Something went wrong! Please try again.'),
          );
        }
      },
    );
  }
}
