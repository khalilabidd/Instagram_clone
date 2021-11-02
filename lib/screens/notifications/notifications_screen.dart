import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/notifications/widgets/widgets.dart';
import 'package:instagram_clone/widgets/widgets.dart';
import 'controllers/notifications_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/general_providers.dart';
import 'package:instagram_clone/repositories/repositories.dart';

class NotificationsScreen extends StatelessWidget {
  static const String routeName = '/notifications';

  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationRepositoryProvider =
        Provider<NotificationRepository>((ref) {
      final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
      return NotificationRepository(firebaseFirestore: firebaseFirestore);
    });

    final notificationsProvider = StateNotifierProvider.autoDispose<
        NotificationsController, NotificationsState>((ref) {
      final notificationsRepository = ref.watch(notificationRepositoryProvider);
      final authStateController = ref.watch(authProvider.notifier);
      return NotificationsController(
          notificationsRepository, authStateController);
    });

    return Consumer(builder: (context, ref, child) {
      final notificationsStates = ref.watch(notificationsProvider);
      switch (notificationsStates.status) {
        case NotificationsStatus.error:
          return Scaffold(
              appBar: AppBar(title: const Text('Notifications')),
              body: CenteredText(text: notificationsStates.failure.message));
        case NotificationsStatus.loaded:
          return Scaffold(
              appBar: AppBar(title: const Text('Notifications')),
              body: ListView.builder(
                itemCount: notificationsStates.notifications.length,
                itemBuilder: (BuildContext context, int index) {
                  final notification = notificationsStates.notifications[index];
                  return NotificationTile(notification: notification!);
                },
              ));
        default:
          return Scaffold(
              appBar: AppBar(title: const Text('Notifications')),
              body: const Center(child: CircularProgressIndicator()));
      }
    });
  }
}
