import 'package:instagram_clone/controllers/liked_posts/liked_posts_event.dart';
import 'package:instagram_clone/screens/create_post/create_post_screen.dart';
import 'package:instagram_clone/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/screens/feed/controllers/feed_controller.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'package:instagram_clone/screens/feed/controllers/feed_event.dart';
import '../../general_providers.dart';

final feedProvider =
StateNotifierProvider.autoDispose<FeedController, FeedState>((ref) {
  final postRepository = ref.watch(postRepositoryProvider);
  final authStateController = ref.watch(authProvider.notifier);
  final likedPostsController = ref.watch(likedPostsProvider.notifier);
  return FeedController(
      postRepository, authStateController, likedPostsController);
});


class FeedScreen extends ConsumerStatefulWidget {
  static const String routeName = '/feed';

  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}


class _FeedScreenState extends ConsumerState<FeedScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((_) =>ref.read(feedProvider.notifier).mapEventsToStates(const FeedEvent.feedFetchPosts()));
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
            !_scrollController.position.outOfRange &&
            ref.read(feedProvider).status != FeedStatus.paginating) {
          WidgetsBinding.instance!
              .addPostFrameCallback((_) =>ref.read(feedProvider.notifier).mapEventsToStates(const FeedEvent.feedPaginatePosts()));
        }
      });
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final feedStates = ref.watch(feedProvider);
    final feedEvents = ref.watch(feedProvider.notifier);
    ref.listen<FeedState>(feedProvider, (state) {
      if (state.status == FeedStatus.error) {
        showDialog(
          context: context,
          builder: (context) => ErrorDialog(content: state.failure.message),
        );
      } else if (state.status == FeedStatus.paginating) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).primaryColor,
            duration: const Duration(seconds: 1),
            content: const Text('Fetching More Posts...'),
          ),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta'),
        actions: [
          if (feedStates.posts.isEmpty &&
              feedStates.status == FeedStatus.loaded)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () =>
                  feedEvents.mapEventsToStates(const FeedEvent.feedFetchPosts()),
            ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              ),
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_box),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePostScreen()),
              ),
            },
          ),
        ],
      ),
      body: _buildBody(feedStates, feedEvents, ref, _scrollController),
    );
  }

  Widget _buildBody(FeedState state, FeedController feedEvents, WidgetRef ref,
      ScrollController _scrollController) {
    final likedPostsEvents = ref.watch(likedPostsProvider.notifier);
    switch (state.status) {
      case FeedStatus.loading:
        return const Center(child: CircularProgressIndicator());
      default:
        return RefreshIndicator(
          onRefresh: () async {
            feedEvents.mapEventsToStates(const FeedEvent.feedFetchPosts());
            likedPostsEvents
                .mapEventsToStates(const LikedPostsEvent.clearAllLikedPosts());
          },
          child: ListView.builder(
            controller: _scrollController,
            itemCount: state.posts.length,
            itemBuilder: (BuildContext context, int index) {
              final post = state.posts[index];
              final likedPostsState = ref.watch(likedPostsProvider);
              final isLiked = likedPostsState.likedPostIds.contains(post!.id);
              final recentlyLiked =
                  likedPostsState.recentlyLikedPostIds.contains(post.id);
              return PostView(
                post: post,
                isLiked: isLiked,
                recentlyLiked: recentlyLiked,
                onLike: () {
                  if (isLiked) {
                    likedPostsEvents.mapEventsToStates(
                        LikedPostsEvent.unlikePost(post: post));
                  } else {
                    likedPostsEvents.mapEventsToStates(
                        LikedPostsEvent.likePost(post: post));
                  }
                },
              );
            },
          ),
        );
    }
  }
}
