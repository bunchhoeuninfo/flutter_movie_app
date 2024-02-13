

import 'package:movie_app/features/movie_detail/domain/repositories/movie_detail_repository.dart';
import 'package:movie_app/models/movie_detail.dart';

class AddBookmarkUseCase {
  final MovieDetailRepository movieDetailRepository;

  AddBookmarkUseCase({required this.movieDetailRepository});

  Future<int> execute(MovieDetail movieDetail) async {
    return movieDetailRepository.bookmarkMovieDetail(movieDetail);
  }
}