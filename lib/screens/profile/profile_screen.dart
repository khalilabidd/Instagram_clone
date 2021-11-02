import 'package:flutter/material.dart';
import 'package:instagram_clone/controllers/auth/auth_event.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_controller.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_event.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:instagram_clone/screens/profile/widgets/widgets.dart';
import 'package:instagram_clone/main.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'controllers/profile_controller.dart';
import 'controllers/profile_event.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';

class ProfileScreenArgs {
  final String userId;

  const ProfileScreenArgs({required this.userId});
}

class ProfileScreen extends ConsumerStatefulWidget {
  final ProfileScreenArgs args;
  static const String routeName = '/profile';

  const ProfileScreen(this.args, {Key? key}) : super(key: key);

  static Route route({required ProfileScreenArgs args}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName + args.userId),
        builder: (context) => ProfileScreen(args));
  }

  @override
  _ProfileScreenState createState() => _ProfileScreenState(args);
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin{
  final ProfileScreenArgs args;

  _ProfileScreenState(this.args);

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance!
        .addPostFrameCallback((_) =>ref.read(profileProvider.notifier).mapEventsToStates(ProfileEvent.profileLoadUser(userId: args.userId)));

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    ref.read(profileProvider.notifier).dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileStates = ref.watch(profileProvider);
    final profileEvents = ref.watch(profileProvider.notifier);
    final authEvents = ref.watch(authProvider.notifier);
    final likedPostsStates = ref.watch(likedPostsProvider);
    final likedPostsEvents = ref.watch(likedPostsProvider.notifier);
    ref.listen<ProfileState>(
      profileProvider,
      (state) {
        if (state.status == ProfileStatus.error) {
          showDialog(
            context: context,
            builder: (context) => ErrorDialog(content: state.failure.message),
          );
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(profileStates.user.username),
        actions: [
          if (profileStates.isCurrentUser)
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                authEvents
                    .mapEventsToStates(const AuthEvent.authLogoutRequested());
                likedPostsEvents.mapEventsToStates(
                    const LikedPostsEvent.clearAllLikedPosts());
                MyApp.navigatorKey.currentState!
                    .pushReplacementNamed(LoginScreen.routeName);
              },
            ),
        ],
      ),
      body: _buildBody(context, profileStates, profileEvents, _tabController,
          likedPostsEvents, likedPostsStates),
    );
  }

  Widget _buildBody(
      BuildContext context,
      ProfileState state,
      ProfileController profileEvents,
      TabController _tabController,
      LikedPostsController likedPostsEvents,
      LikedPostsState likedPostsStates) {
    switch (state.status) {
      case ProfileStatus.loading:
        return const Center(child: CircularProgressIndicator());
      default:
        return RefreshIndicator(
          onRefresh: () async {
            profileEvents.mapEventsToStates(
                ProfileEvent.profileLoadUser(userId: state.user.id));
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 0),
                      child: Row(
                        children: [
                          UserProfileImage(
                            radius: 40.0,
                            profileImageUrl: state.user.profileImageUrl,
                          ),
                          ProfileStats(
                            isCurrentUser: state.isCurrentUser,
                            isFollowing: state.isFollowing,
                            posts: state.posts.length,
                            followers: state.user.followers,
                            following: state.user.following,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: ProfileInfo(
                        username: state.user.username,
                        bio: state.user.bio,
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(icon: Icon(Icons.grid_on, size: 28.0)),
                    Tab(icon: Icon(Icons.list, size: 28.0)),
                  ],
                  indicatorWeight: 3.0,
                  onTap: (i) => profileEvents.mapEventsToStates(
                      ProfileEvent.profileToggleGridView(isGridView: i == 0)),
                ),
              ),
              state.isGridView
                  ? SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 2.0,
                        crossAxisSpacing: 2.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final post = state.posts[index];
                          return GestureDetector(
                            onTap: () => Navigator.of(context).pushNamed(
                              CommentsScreen.routeName,
                              arguments: CommentsScreenArgs(post: post!),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: post!.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        childCount: state.posts.length,
                      ),
                    )
                  : SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final post = state.posts[index];
                          final isLiked =
                              likedPostsStates.likedPostIds.contains(post!.id);
                          return PostView(
                            post: post,
                            isLiked: isLiked,
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
                        childCount: state.posts.length,
                      ),
                    ),
            ],
          ),
        );
    }
  }
}
