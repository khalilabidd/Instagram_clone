import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/enums/enums.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarController extends StateNotifier<BottomNavBarState> {
  BottomNavBarController()
      : super(const BottomNavBarState(selectedItem: BottomNavItem.feed));

  void updateSelectedItem(BottomNavItem item) {
    if (item != state.selectedItem) {
      state = BottomNavBarState(selectedItem: item);
    }
  }
}
