import 'package:dartz/dartz.dart';
import 'package:movie_app/features/movie_detail/domain/repositories/movie_detail_repository.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/shared/util/app_exception.dart';


class GetMovieDetailsUseCase {
  final MovieDetailRepository movieDetailRepository;

  GetMovieDetailsUseCase({required this.movieDetailRepository});

  Future<Either<AppException, MovieDetail>> execute(
      {required int movieId}) async {
    return movieDetailRepository.getMovie(id: movieId);
  }
}