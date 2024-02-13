import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/repositories/home_repository.dart';
import 'package:movie_app/models/genres.dart';
import 'package:movie_app/shared/util/app_exception.dart';


class FetchAndCacheGenreUseCase {
  final HomeRepository homeRepository;

  FetchAndCacheGenreUseCase({required this.homeRepository});

  Future<Either<AppException, Genres>> execute() {
    return homeRepository.fetchAndCacheGenres();
  }
}