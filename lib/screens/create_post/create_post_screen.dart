import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/helpers/helpers.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../general_providers.dart';
import 'controllers/create_post_controller.dart';
import 'controllers/create_post_event.dart';

final createPostProvider =
    StateNotifierProvider.autoDispose<CreatePostController, CreatePostState>(
        (ref) {
  final postRepository = ref.watch(postRepositoryProvider);
  final storageRepository = ref.watch(storageRepositoryProvider);
  final authStateController = ref.watch(authProvider.notifier);
  return CreatePostController(
      postRepository, storageRepository, authStateController);
});

class CreatePostScreen extends ConsumerWidget {
  static const String routeName = '/createPost';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CreatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createPostStates = ref.watch(createPostProvider);
    final createPostEvents = ref.watch(createPostProvider.notifier);
    ref.listen<CreatePostState>(createPostProvider, (state) {
      if (state.status == CreatePostStatus.success) {
        _formKey.currentState!.reset();
        createPostEvents.mapEventToState(const CreatePostEvent.reset());

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            duration: Duration(seconds: 1),
            content: Text('Post Created'),
          ),
        );
      } else if (state.status == CreatePostStatus.error) {
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
          title: const Text('Create Post'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (createPostStates.status == CreatePostStatus.submitting)
                const LinearProgressIndicator(),
              GestureDetector(
                onTap: () => _selectPostImage(context, createPostEvents),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: createPostStates.postImage != null
                      ? Image.file(createPostStates.postImage!,
                          fit: BoxFit.cover)
                      : const Icon(
                          Icons.image,
                          color: Colors.grey,
                          size: 120.0,
                        ),
                ),
              ),
              if (createPostStates.status == CreatePostStatus.submitting)
                const LinearProgressIndicator(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(hintText: 'Caption'),
                        onChanged: (value) => createPostEvents.mapEventToState(
                            CreatePostEvent.captionChanged(value)),
                        validator: (value) => value!.trim().isEmpty
                            ? 'Caption cannot be empty.'
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
                          createPostStates.postImage!,
                          createPostStates.status ==
                              CreatePostStatus.submitting,
                          createPostEvents,
                        ),
                        child: const Text('Post'),
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

  void _selectPostImage(
      BuildContext context, CreatePostController createPostEvents) async {
    final pickedFile = await ImageHelper.pickImageFromGallery(
      context: context,
      cropStyle: CropStyle.rectangle,
      title: 'Create Post',
    );
    if (pickedFile != null) {
      createPostEvents
          .mapEventToState(CreatePostEvent.postImageChanged(pickedFile));
    }
  }

  void _submitForm(BuildContext context, File? postImage, bool isSubmitting,
      CreatePostController createPostEvents) {
    if (_formKey.currentState!.validate() &&
        postImage != null &&
        !isSubmitting) {
      createPostEvents.mapEventToState(const CreatePostEvent.submit());
    }
  }
}
