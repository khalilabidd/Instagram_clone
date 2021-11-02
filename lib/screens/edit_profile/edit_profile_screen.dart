import 'package:flutter/material.dart';
import 'package:instagram_clone/helpers/helpers.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'controllers/edit_profile_controller.dart';
import 'package:instagram_clone/general_providers.dart';
import 'package:instagram_clone/screens/edit_profile/controllers/edit_profile_controller.dart';

import 'controllers/edit_profile_event.dart';

class EditProfileScreenArgs {
  final User user;

  const EditProfileScreenArgs({required this.user});
}

final editProfileProvider =
    StateNotifierProvider.autoDispose<EditProfileController, EditProfileState>(
        (ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final storageRepository = ref.watch(storageRepositoryProvider);
  final profileController = ref.watch(profileProvider.notifier);
  return EditProfileController(
      userRepository, storageRepository, profileController);
});

class EditProfileScreen extends ConsumerWidget {
  static const String routeName = '/editProfile';

  static Route route({required EditProfileScreenArgs args}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => EditProfileScreen(user: args.user),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final User user;

  EditProfileScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editProfileStates = ref.watch(editProfileProvider);
    final editProfileEvents = ref.watch(editProfileProvider.notifier);
    ref.listen<EditProfileState>(editProfileProvider, (state) {
      if (state.status == EditProfileStatus.success) {
        Navigator.of(context).pop();
      } else if (state.status == EditProfileStatus.error) {
        showDialog(
          context: context,
          builder: (context) => ErrorDialog(content: state.failure.message),
        );
      }
    });

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (editProfileStates.status == EditProfileStatus.submitting)
                const LinearProgressIndicator(),
              const SizedBox(height: 32.0),
              GestureDetector(
                onTap: () => _selectProfileImage(context, editProfileEvents),
                child: UserProfileImage(
                  radius: 80.0,
                  profileImageUrl: user.profileImageUrl,
                  profileImage: editProfileStates.profileImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        initialValue: user.username,
                        decoration: const InputDecoration(hintText: 'Username'),
                        onChanged: (value) => editProfileEvents
                            .mapEventsToStates(EditProfileEvent.usernameChanged(
                                username: value)),
                        validator: (value) => value!.trim().isEmpty
                            ? 'Username cannot be empty.'
                            : null,
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        initialValue: user.bio,
                        decoration: const InputDecoration(hintText: 'Bio'),
                        onChanged: (value) =>
                            editProfileEvents.mapEventsToStates(
                                EditProfileEvent.bioChanged(bio: value)),
                        validator: (value) => value!.trim().isEmpty
                            ? 'Bio cannot be empty.'
                            : null,
                      ),
                      const SizedBox(height: 28.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                        onPressed: () => _submitForm(
                            context,
                            editProfileStates.status ==
                                EditProfileStatus.submitting,
                            editProfileEvents),
                        child: const Text('Update'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectProfileImage(
      BuildContext context, EditProfileController editProfileEvents) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
      context: context,
      cropStyle: CropStyle.circle,
      title: 'Profile Image',
    );
    if (pickedFile != null) {
      editProfileEvents.mapEventsToStates(
          EditProfileEvent.profileImageChanged(image: pickedFile));
    }
  }

  void _submitForm(BuildContext context, bool isSubmitting,
      EditProfileController editProfileEvents) {
    if (_formKey.currentState!.validate() && !isSubmitting) {
      editProfileEvents.mapEventsToStates(const EditProfileEvent.submit());
    }
  }
}
