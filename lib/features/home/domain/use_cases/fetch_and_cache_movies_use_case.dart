import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/repositories/home_repository.dart';
import 'package:movie_app/models/domain/movies.dart';
import 'package:movie_app/shared/util/app_exception.dart';

class FetchAndCacheMoviesUseCase {
  final HomeRepository homeRepository;

  FetchAndCacheMoviesUseCase({required this.homeRepository});

  Future<Either<AppException, Movies>> execute({required int page,required String type}) {
    return homeRepository.fetchAndCacheMovies(page: page ,type: type);
  }
}