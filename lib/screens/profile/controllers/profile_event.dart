import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/models/models.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileLoadUser({required String userId}) =
  ProfileLoadUser;

  const factory ProfileEvent.profileToggleGridView({required bool isGridView}) =
  ProfileToggleGridView;

  const factory ProfileEvent.profileUpdatePosts({required List<Post?> posts}) =
  ProfileUpdatePosts;

  const factory ProfileEvent.profileFollowUser() =
  ProfileFollowUser;

  const factory ProfileEvent.profileUnfollowUser() =
  ProfileUnfollowUser;
}