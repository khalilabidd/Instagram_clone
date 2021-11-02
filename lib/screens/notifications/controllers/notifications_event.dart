import 'package:instagram_clone/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.freezed.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.notificationsUpdateNotifications({required List<Notif?> notifications}) =
  NotificationsUpdateNotifications;
}

