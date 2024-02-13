import 'package:dartz/dartz.dart';

import 'package:movie_app/features/movie_detail/data/datasource/local/movie_detail_local_datasource.dart';
import 'package:movie_app/features/movie_detail/data/datasource/remote/movie_detail_remote_datasource.dart';
import 'package:movie_app/features/movie_detail/domain/repositories/movie_detail_repository.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/models/response/casts_response.dart';
import 'package:movie_app/shared/util/app_exception.dart';




class MovieDetailRepositoryImpl extends MovieDetailRepository {
  final MovieDetailRemoteDataSource movieDetailDataSource;
  final MovieDetailLocalDataSource movieDetailLocalDataSource;

  MovieDetailRepositoryImpl(
      {required this.movieDetailDataSource,
      required this.movieDetailLocalDataSource});

  @override
  Future<Either<AppException, MovieDetail>> getMovie({required int id}) async {
    return movieDetailDataSource.getMovie(id: id);
  }

  @override
  Future<Either<AppException, CastsResponse>> getCasts({required int id}) {
    return movieDetailDataSource.getCasts(id: id);
  }

  @override
  Future<int> bookmarkMovieDetail(MovieDetail movieDetail) {
    return movieDetailLocalDataSource.bookmarkMovie(movieDetail);
  }

  @override
  Future<bool> removeBookmark(MovieDetail movieDetail) {
    return movieDetailLocalDataSource.removeBookmark(movieDetail);
  }

  @override
  Future<bool> isBookmarked(int id) {
    return movieDetailLocalDataSource.isBookmarked(id);
  }
}