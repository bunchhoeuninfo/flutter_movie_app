import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/bookmarks/presentation/providers/state/bookmark_notifier.dart';
import 'package:movie_app/features/bookmarks/presentation/providers/state/bookmark_state.dart';

final bookmarkNotifierProvider =
    AutoDisposeStateNotifierProvider<BookmarkNotifier, BookmarkState>(
        (ref) => BookmarkNotifier());