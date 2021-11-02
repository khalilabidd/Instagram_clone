part of 'liked_posts_controller.dart';

class LikedPostsState extends Equatable {
  final Set<String> likedPostIds;
  final Set<String> recentlyLikedPostIds;

  const LikedPostsState({
    required this.likedPostIds,
    required this.recentlyLikedPostIds,
  });

  factory LikedPostsState.initial() {
    return const LikedPostsState(likedPostIds: {}, recentlyLikedPostIds: {});
  }

  @override
  List<Object?> get props => [likedPostIds, recentlyLikedPostIds];

  LikedPostsState copyWith({
    Set<String>? likedPostIds,
    Set<String>? recentlyLikedPostIds,
  }) {
    return LikedPostsState(
      likedPostIds: likedPostIds ?? this.likedPostIds,
      recentlyLikedPostIds: recentlyLikedPostIds ?? this.recentlyLikedPostIds,
    );
  }
}