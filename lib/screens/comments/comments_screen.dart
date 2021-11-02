import 'package:flutter/material.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/screens/comments/controllers/comments_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:intl/intl.dart';
import 'package:instagram_clone/screens/comments/controllers/comments_event.dart';
import '../../general_providers.dart';

final commentsProvider =
StateNotifierProvider.autoDispose<CommentsController, CommentsState>(
        (ref) {
      final postRepository = ref.watch(postRepositoryProvider);
      final authStateController = ref.watch(authProvider.notifier);
      return CommentsController(postRepository, authStateController);
    });

class CommentsScreenArgs {
  final Post post;

  const CommentsScreenArgs({required this.post});
}

class CommentsScreen extends ConsumerStatefulWidget {
  static const String routeName = '/comments';
  final CommentsScreenArgs args;

  const CommentsScreen(this.args,{Key? key}) : super(key: key);

  static Route route({required CommentsScreenArgs args}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => CommentsScreen(args),
    );
  }

  @override
  _CommentsScreenState createState() => _CommentsScreenState(args);
}

class _CommentsScreenState extends ConsumerState<CommentsScreen> {

  final CommentsScreenArgs args;

  _CommentsScreenState(this.args);

  late TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
    WidgetsBinding.instance!
        .addPostFrameCallback((_) =>ref.read(commentsProvider.notifier).mapEventToState(CommentsEvent.commentsFetchComments(post: args.post)));
  }
  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final commentsStates = ref.watch(commentsProvider);
    final commentsEvents = ref.watch(commentsProvider.notifier);
    ref.listen<CommentsState>(
      commentsProvider,
      (state) {
        if (state.status == CommentsStatus.error) {
          showDialog(
            context: context,
            builder: (context) => ErrorDialog(content: state.failure.message),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Comments')),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 60.0),
        itemCount: commentsStates.comments.length,
        itemBuilder: (BuildContext context, int index) {
          final comment = commentsStates.comments[index];
          return ListTile(
            leading: UserProfileImage(
              radius: 22.0,
              profileImageUrl: comment!.author.profileImageUrl,
            ),
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: comment.author.username,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: ' '),
                  TextSpan(text: comment.content),
                ],
              ),
            ),
            subtitle: Text(
              DateFormat.yMd().add_jm().format(comment.date),
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () => Navigator.of(context).pushNamed(
              ProfileScreen.routeName,
              arguments: ProfileScreenArgs(userId: comment.author.id),
            ),
          );
        },
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (commentsStates.status == CommentsStatus.submitting)
              const LinearProgressIndicator(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration.collapsed(
                        hintText: 'Write a comment...'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    final content = _commentController.text.trim();
                    if (content.isNotEmpty) {
                      commentsEvents.mapEventToState(
                          CommentsEvent.commentsPostComment(content: content));
                      _commentController.clear();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
