import 'package:instagram_clone/controllers/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/config/custom_router.dart';
import 'package:instagram_clone/enums/enums.dart';
import 'package:instagram_clone/screens/screens.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';

class TabNavigator extends ConsumerWidget {
  static const String tabNavigatorRoot = '/';

  final GlobalKey<NavigatorState> navigatorKey;
  final BottomNavItem item;

  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStates = ref.read(authProvider);
    final routeBuilders = _routeBuilders(authStates);
    return Navigator(
      key: navigatorKey,
      initialRoute: tabNavigatorRoot,
      onGenerateInitialRoutes: (_, initialRoute) {
        return [
          MaterialPageRoute(
            settings: const RouteSettings(name: tabNavigatorRoot),
            builder: (context) => routeBuilders[initialRoute]!(context),
          )
        ];
      },
      onGenerateRoute: CustomRouter.onGenerateNestedRoute,
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(AuthState authStates) {
    return {
      tabNavigatorRoot: (context) => _getScreen(context, item, authStates)
    };
  }

  Widget _getScreen(
      BuildContext context, BottomNavItem item, AuthState authStates) {
    switch (item) {
      case BottomNavItem.feed:
        return const FeedScreen();
     case BottomNavItem.notifications:
        return const NotificationsScreen();
      case BottomNavItem.profile:
        return ProfileScreen(ProfileScreenArgs(userId: authStates.user!.uid));
      default:
        return const Scaffold();
    }
  }
}
