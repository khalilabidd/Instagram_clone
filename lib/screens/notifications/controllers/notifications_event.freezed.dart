// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsEventTearOff {
  const _$NotificationsEventTearOff();

  NotificationsUpdateNotifications notificationsUpdateNotifications(
      {required List<Notif?> notifications}) {
    return NotificationsUpdateNotifications(
      notifications: notifications,
    );
  }
}

/// @nodoc
const $NotificationsEvent = _$NotificationsEventTearOff();

/// @nodoc
mixin _$NotificationsEvent {
  List<Notif?> get notifications => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Notif?> notifications)
        notificationsUpdateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Notif?> notifications)?
        notificationsUpdateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Notif?> notifications)?
        notificationsUpdateNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsUpdateNotifications value)
        notificationsUpdateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationsUpdateNotifications value)?
        notificationsUpdateNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsUpdateNotifications value)?
        notificationsUpdateNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsEventCopyWith<NotificationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
  $Res call({List<Notif?> notifications});
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif?>,
    ));
  }
}

/// @nodoc
abstract class $NotificationsUpdateNotificationsCopyWith<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  factory $NotificationsUpdateNotificationsCopyWith(
          NotificationsUpdateNotifications value,
          $Res Function(NotificationsUpdateNotifications) then) =
      _$NotificationsUpdateNotificationsCopyWithImpl<$Res>;
  @override
  $Res call({List<Notif?> notifications});
}

/// @nodoc
class _$NotificationsUpdateNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsUpdateNotificationsCopyWith<$Res> {
  _$NotificationsUpdateNotificationsCopyWithImpl(
      NotificationsUpdateNotifications _value,
      $Res Function(NotificationsUpdateNotifications) _then)
      : super(_value, (v) => _then(v as NotificationsUpdateNotifications));

  @override
  NotificationsUpdateNotifications get _value =>
      super._value as NotificationsUpdateNotifications;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(NotificationsUpdateNotifications(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif?>,
    ));
  }
}

/// @nodoc

class _$NotificationsUpdateNotifications
    implements NotificationsUpdateNotifications {
  const _$NotificationsUpdateNotifications({required this.notifications});

  @override
  final List<Notif?> notifications;

  @override
  String toString() {
    return 'NotificationsEvent.notificationsUpdateNotifications(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationsUpdateNotifications &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  $NotificationsUpdateNotificationsCopyWith<NotificationsUpdateNotifications>
      get copyWith => _$NotificationsUpdateNotificationsCopyWithImpl<
          NotificationsUpdateNotifications>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Notif?> notifications)
        notificationsUpdateNotifications,
  }) {
    return notificationsUpdateNotifications(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Notif?> notifications)?
        notificationsUpdateNotifications,
  }) {
    return notificationsUpdateNotifications?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Notif?> notifications)?
        notificationsUpdateNotifications,
    required TResult orElse(),
  }) {
    if (notificationsUpdateNotifications != null) {
      return notificationsUpdateNotifications(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationsUpdateNotifications value)
        notificationsUpdateNotifications,
  }) {
    return notificationsUpdateNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationsUpdateNotifications value)?
        notificationsUpdateNotifications,
  }) {
    return notificationsUpdateNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationsUpdateNotifications value)?
        notificationsUpdateNotifications,
    required TResult orElse(),
  }) {
    if (notificationsUpdateNotifications != null) {
      return notificationsUpdateNotifications(this);
    }
    return orElse();
  }
}

abstract class NotificationsUpdateNotifications implements NotificationsEvent {
  const factory NotificationsUpdateNotifications(
          {required List<Notif?> notifications}) =
      _$NotificationsUpdateNotifications;

  @override
  List<Notif?> get notifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NotificationsUpdateNotificationsCopyWith<NotificationsUpdateNotifications>
      get copyWith => throw _privateConstructorUsedError;
}
