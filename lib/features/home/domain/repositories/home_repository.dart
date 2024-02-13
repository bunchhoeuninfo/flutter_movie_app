import 'package:dartz/dartz.dart';
import 'package:movie_app/models/domain/movies.dart';
import 'package:movie_app/models/genres.dart';
import 'package:movie_app/shared/util/app_exception.dart';


abstract class HomeRepository {
  Future<Either<AppException, Movies>> fetchAndCacheMovies(
      {required int page, required String type});

  Future<Either<AppException, Genres>> fetchAndCacheGenres();

  Future<Either<AppException, Genres>> fetchCachedGenres();

  Future<Either<AppException, Movies>> fetchCachedMovies(
      {required String type});
}