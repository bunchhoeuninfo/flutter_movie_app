import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_detail/presentation/provider/state/casts_notifier.dart';
import 'package:movie_app/features/movie_detail/presentation/provider/state/casts_state.dart';
import 'package:movie_app/features/movie_detail/presentation/provider/state/movie_detail_notifier.dart';
import 'package:movie_app/features/movie_detail/presentation/provider/state/movie_detail_state.dart';

final movieDetailStateNotifier =
    AutoDisposeStateNotifierProvider<MovieDetailNotifier, MovieDetailState>(
        (ref) => MovieDetailNotifier());


final castsStateNotifier =
AutoDisposeStateNotifierProvider.family<CastsNotifier, CastsState,int>(
        (ref,id) => CastsNotifier()..getCasts(id: id));