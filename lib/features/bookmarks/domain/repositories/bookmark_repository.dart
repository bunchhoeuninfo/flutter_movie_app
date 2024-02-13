import 'package:dartz/dartz.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/shared/util/app_exception.dart';

abstract class BookmarkRepository {
  Future<Either<AppException, List<MovieDetail>>> getBookmarks();

  Future<void> removeBookmark(MovieDetail movieDetail);
}