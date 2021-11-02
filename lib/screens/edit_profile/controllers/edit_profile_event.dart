import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_event.freezed.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.profileImageChanged({required File image}) =
  ProfileImageChanged;

  const factory EditProfileEvent.usernameChanged({required String username}) =
  UsernameChanged;

  const factory EditProfileEvent.bioChanged({required String bio}) =
  BioChanged;

  const factory EditProfileEvent.submit() =
  Submit;
}