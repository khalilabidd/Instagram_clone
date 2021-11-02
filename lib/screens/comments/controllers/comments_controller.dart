import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';

import 'comments_event.dart';

part 'comments_state.dart';

class CommentsController extends StateNotifier<CommentsState> {
  final PostRepository _postRepository;
  final AuthStateController _authRepository;

  StreamSubscription<List<Future<Comment?>>>? _commentsSubscription;

  CommentsController(this._postRepository, this._authRepository)
      : super(CommentsState.initial());

  @override
  void dispose() {
    _commentsSubscription?.cancel();
    return super.dispose();
  }

  Future mapEventToState(
    CommentsEvent event,
  ) async {
    return event.map(commentsFetchComments: (value) async {
      state = state.copyWith(status: CommentsStatus.loading);
      try {
        _commentsSubscription?.cancel();
        _commentsSubscription = _postRepository
            .getPostComments(postId: value.post.id!)
            .listen((comments) async {
          final allComments = await Future.wait(comments);
          state = state.copyWith(comments: allComments);
        });

        state = state.copyWith(post: value.post, status: CommentsStatus.loaded);
      } catch (err) {
        state = state.copyWith(
          status: CommentsStatus.error,
          failure: const Failure(
            message: 'We were unable to load this post\'s comments.',
          ),
        );
      }
    }, commentsUpdateComments: (value) async {
      state = state.copyWith(comments: value.comments);
    }, commentsPostComment: (value) async {
      state = state.copyWith(status: CommentsStatus.submitting);
      try {
        final author = User.empty.copyWith(id: _authRepository.state.user!.uid);
        final comment = Comment(
          postId: state.post!.id!,
          author: author,
          content: value.content,
          date: DateTime.now(),
        );

        await _postRepository.createComment(
          post: state.post!,
          comment: comment,
        );

        state = state.copyWith(status: CommentsStatus.loaded);
      } catch (err) {
        state = state.copyWith(
          status: CommentsStatus.error,
          failure: const Failure(
            message: 'Comment failed to post',
          ),
        );
      }
    });
  }
}
