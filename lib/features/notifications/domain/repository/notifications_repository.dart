import 'package:dartz/dartz.dart';
import 'package:movie_app/features/notifications/data/models/notification.dart';
import 'package:movie_app/shared/util/app_exception.dart';


abstract class NotificationRepository{
  Future<Either<AppException, List<NotificationModel>>> getNotifications();

  Future<void> clearNotifications();
}