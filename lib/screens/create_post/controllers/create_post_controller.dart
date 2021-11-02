import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'create_post_event.dart';

part 'create_post_state.dart';

class CreatePostController extends StateNotifier<CreatePostState> {
  final PostRepository _postRepository;
  final StorageRepository _storageRepository;
  final AuthStateController _authController;

  CreatePostController(
      this._postRepository, this._storageRepository, this._authController)
      : super(CreatePostState.initial());

  Future mapEventToState(CreatePostEvent event) async {
    return event.map(postImageChanged: (value) async {
      state = state.copyWith(
          postImage: value.file, status: CreatePostStatus.initial);
    }, captionChanged: (value) async {
      state = state.copyWith(
          caption: value.caption, status: CreatePostStatus.initial);
    }, submit: (value) async {
      state.copyWith(status: CreatePostStatus.submitting);
      try {
        final author = User.empty.copyWith(id: _authController.state.user!.uid);
        final postImageUrl =
            await _storageRepository.uploadPostImage(image: state.postImage!);

        final post = Post(
          author: author,
          imageUrl: postImageUrl,
          caption: state.caption,
          likes: 0,
          date: DateTime.now(),
        );

        await _postRepository.createPost(post: post);

        state = state.copyWith(status: CreatePostStatus.success);
      } catch (err) {
        state = state.copyWith(
          status: CreatePostStatus.error,
          failure:
              const Failure(message: 'We were unable to create your post.'),
        );
      }
    }, reset: (value) {
      state = CreatePostState.initial();
    });
  }
}
