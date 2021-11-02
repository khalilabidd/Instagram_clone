import 'package:flutter/material.dart';
import 'package:instagram_clone/enums/enums.dart';
import 'package:instagram_clone/screens/nav/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controllers/bottom_nav_bar_controller.dart';



class NavScreen extends ConsumerWidget {
  static const String routeName = '/nav';

  NavScreen({Key? key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (_, __, ___) => NavScreen(),
    );
  }

  final Map<BottomNavItem, GlobalKey<NavigatorState>> navigatorKeys = {
    BottomNavItem.feed: GlobalKey<NavigatorState>(),
    BottomNavItem.notifications: GlobalKey<NavigatorState>(),
    BottomNavItem.profile: GlobalKey<NavigatorState>(),
  };

  final Map<BottomNavItem, IconData> items = const {
    BottomNavItem.feed: Icons.home,
    BottomNavItem.notifications: Icons.favorite_border,
    BottomNavItem.profile: Icons.account_circle,
  };

  final bottomNavBarProvider = StateNotifierProvider.autoDispose<
      BottomNavBarController, BottomNavBarState>((ref) {
    return BottomNavBarController();
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavBarStates = ref.watch(bottomNavBarProvider);
    final bottomNavBarEvents = ref.watch(bottomNavBarProvider.notifier);
    return WillPopScope(
      onWillPop: () async => false,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Stack(
              children: items
                  .map((item, _) => MapEntry(
                        item,
                        _buildOffstageNavigator(
                          item,
                          item == bottomNavBarStates.selectedItem,
                        ),
                      ))
                  .values
                  .toList(),
            ),
            bottomNavigationBar: BottomNavBar(
              items: items,
              selectedItem: bottomNavBarStates.selectedItem,
              onTap: (index) {
                final selectedItem = BottomNavItem.values[index];
                _selectBottomNavItem(
                    context,
                    selectedItem,
                    selectedItem == bottomNavBarStates.selectedItem,
                    bottomNavBarEvents);
              },
            ),
          );
        },
      ),
    );
  }

  void _selectBottomNavItem(
    BuildContext context,
    BottomNavItem selectedItem,
    bool isSameItem,
    BottomNavBarController bottomNavBarEvents,
  ) {
    if (isSameItem) {
      navigatorKeys[selectedItem]!
          .currentState!
          .popUntil((route) => route.isFirst);
    }
    bottomNavBarEvents.updateSelectedItem(selectedItem);
  }

  Widget _buildOffstageNavigator(
    BottomNavItem currentItem,
    bool isSelected,
  ) {
    return Offstage(
      offstage: !isSelected,
      child: TabNavigator(
        navigatorKey: navigatorKeys[currentItem]!,
        item: currentItem,
      ),
    );
  }
}
