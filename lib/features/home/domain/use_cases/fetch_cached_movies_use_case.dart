import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/repositories/home_repository.dart';
import 'package:movie_app/models/domain/movies.dart';
import 'package:movie_app/shared/util/app_exception.dart';

class FetchCachedMoviesUseCase {
  final HomeRepository homeRepository;

  FetchCachedMoviesUseCase({required this.homeRepository});

  Future<Either<AppException, Movies>> execute({required String type}) {
    return homeRepository.fetchCachedMovies(type: type);
  }
}