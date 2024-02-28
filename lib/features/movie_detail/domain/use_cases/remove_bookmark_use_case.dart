import 'package:movie_app/features/movie_detail/domain/repositories/movie_detail_repository.dart';
import 'package:movie_app/models/movie_detail.dart';

class RemoveBookmarkUseCase {
  final MovieDetailRepository movieDetailRepository;

  RemoveBookmarkUseCase({required this.movieDetailRepository});

  Future<bool> execute(MovieDetail movieDetail) async {
    return movieDetailRepository.removeBookmark(movieDetail);
  }
}