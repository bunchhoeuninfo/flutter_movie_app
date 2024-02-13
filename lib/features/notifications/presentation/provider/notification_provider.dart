import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/notifications/presentation/provider/state/notification_state.dart';
import 'package:movie_app/features/notifications/presentation/provider/state/notifications_notifier.dart';

final notificationStateProvider =
AutoDisposeStateNotifierProvider<NotificationNotifier, NotificationState>(
        (ref) => NotificationNotifier());