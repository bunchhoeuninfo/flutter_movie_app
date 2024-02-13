import 'package:dartz/dartz.dart';
import 'package:movie_app/features/bookmarks/domain/repositories/bookmark_repository.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/shared/util/app_exception.dart';

class GetBookmarksUseCase {
  final BookmarkRepository bookmarkRepository;

  GetBookmarksUseCase({required this.bookmarkRepository});

  Future<Either<AppException, List<MovieDetail>>> execute() async {
    return bookmarkRepository.getBookmarks();
  }
}