import 'package:dartz/dartz.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/shared/util/app_exception.dart';

abstract class BookmarkLocalDataSource {
  Future<Either<AppException, List<MovieDetail>>> getBookMarkMovies();
  Future<void> removeBookMark(MovieDetail movieDetail);
}