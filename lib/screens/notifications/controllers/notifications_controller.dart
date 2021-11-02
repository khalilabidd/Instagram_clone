import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/repositories/repositories.dart';
import 'notifications_event.dart';

part 'notifications_state.dart';


class NotificationsController extends StateNotifier<NotificationsState> {
  final NotificationRepository _notificationRepository;
  final AuthStateController _authController;

  StreamSubscription<List<Future<Notif?>>>? _notificationsSubscription;

  NotificationsController(this._notificationRepository,
      this._authController)  :
        super(NotificationsState.initial()) {
    _notificationsSubscription?.cancel();
    _notificationsSubscription = _notificationRepository
        .getUserNotifications(userId: _authController.state.user!.uid)
        .listen((notifications) async {
      final allNotifications = await Future.wait(notifications);
      state=state.copyWith(
        notifications: allNotifications,
        status: NotificationsStatus.loaded,
      );
    });
  }

  @override
  void dispose() {
    _notificationsSubscription?.cancel();
    return super.dispose();
  }

  Future mapEventsToStates(NotificationsEvent event) async {
    return event.map(notificationsUpdateNotifications: (value) async {
      state=state.copyWith(
        notifications: event.notifications,
        status: NotificationsStatus.loaded,
      );
    });
  }
}
