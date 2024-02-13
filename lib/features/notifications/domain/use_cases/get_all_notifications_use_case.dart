import 'package:dartz/dartz.dart';
import 'package:movie_app/features/notifications/data/models/notification.dart';
import 'package:movie_app/features/notifications/domain/repository/notifications_repository.dart';
import 'package:movie_app/shared/util/app_exception.dart';


class GetAllNotificationsUseCase {
  final NotificationRepository notificationRepository;

  GetAllNotificationsUseCase({required this.notificationRepository});

  Future<Either<AppException, List<NotificationModel>>> execute() async {
    return notificationRepository.getNotifications();
  }
}