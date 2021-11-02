import 'package:instagram_clone/screens/profile/controllers/profile_event.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';

class ProfileButton extends ConsumerWidget {
  final bool isCurrentUser;
  final bool isFollowing;

  const ProfileButton({
    Key? key,
    required this.isCurrentUser,
    required this.isFollowing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileStates = ref.watch(profileProvider);
    final profileEvents = ref.watch(profileProvider.notifier);
    return isCurrentUser
        ? TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            onPressed: () => Navigator.of(context).pushNamed(
              EditProfileScreen.routeName,
              arguments: EditProfileScreenArgs(user: profileStates.user),
            ),
            child: const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(
              backgroundColor: isFollowing
                  ? Colors.grey[300]
                  : Theme.of(context).primaryColor,
            ),
            onPressed: () => isFollowing
                ? profileEvents
                .mapEventsToStates(const ProfileEvent.profileUnfollowUser())
                : profileEvents
                .mapEventsToStates(const ProfileEvent.profileFollowUser()),
            child: Text(
              isFollowing ? 'Unfollow' : 'Follow',
              style: TextStyle(
                fontSize: 16.0,
                color: isFollowing ? Colors.black : Colors.white,
              ),
            ),
          );
  }
}
