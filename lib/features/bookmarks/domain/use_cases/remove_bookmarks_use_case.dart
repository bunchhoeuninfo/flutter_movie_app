

import 'package:movie_app/features/bookmarks/domain/repositories/bookmark_repository.dart';
import 'package:movie_app/models/movie_detail.dart';

class RemoveBookmarkUseCase {
  final BookmarkRepository bookmarkRepository;

  RemoveBookmarkUseCase({required this.bookmarkRepository});

  Future<void> execute(MovieDetail movieDetail) async {
    return bookmarkRepository.removeBookmark(movieDetail);
  }
}