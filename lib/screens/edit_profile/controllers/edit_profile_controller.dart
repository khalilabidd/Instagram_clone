import 'dart:io';

import 'package:instagram_clone/screens/profile/controllers/profile_controller.dart';
import 'package:instagram_clone/screens/profile/controllers/profile_event.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'edit_profile_event.dart';

part 'edit_profile_state.dart';

class EditProfileController extends StateNotifier<EditProfileState> {
  final UserRepository _userRepository;
  final StorageRepository _storageRepository;
  final ProfileController _profileController;

  EditProfileController(
      this._userRepository, this._storageRepository, this._profileController)
      : super(EditProfileState.initial()) {
    final user = _profileController.state.user;
    state = state.copyWith(username: user.username, bio: user.bio);
  }

  Future mapEventsToStates(
    EditProfileEvent event,
  ) async {
    return event.map(
      profileImageChanged: (value) async {
        state = state.copyWith(
            profileImage: value.image, status: EditProfileStatus.initial);
      },
      usernameChanged: (value) async {
        state = state.copyWith(
            username: value.username, status: EditProfileStatus.initial);
      },
      bioChanged: (value) async {
        state = state.copyWith(
            bio: value.bio, status: EditProfileStatus.initial);
      },
      submit: (value) async {
        state = state.copyWith(status: EditProfileStatus.submitting);
        try {
          final user = _profileController.state.user;

          var profileImageUrl = user.profileImageUrl;
          if (state.profileImage != null) {
            profileImageUrl = await _storageRepository.uploadProfileImage(
              url: profileImageUrl,
              image: state.profileImage!,
            );
          }

          final updatedUser = user.copyWith(
            username: state.username.toLowerCase(),
            bio: state.bio,
            profileImageUrl: profileImageUrl,
          );

          await _userRepository.updateUser(user: updatedUser);

          _profileController
              .mapEventsToStates(ProfileEvent.profileLoadUser(userId: user.id));

          state = state.copyWith(status: EditProfileStatus.success);
        } catch (err) {
          state = state.copyWith(
            status: EditProfileStatus.error,
            failure: const Failure(
              message: 'We were unable to update your profile.',
            ),
          );
        }
      },
    );
  }
}
