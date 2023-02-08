import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_populer_movies_usecase.dart';
import 'package:movies/Movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies/Movies/presentation/controller/movies_event.dart';
import 'package:movies/Movies/presentation/controller/movies_state.dart';
import 'package:movies/core/utils/enums.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopulerMoviesUseCase getPopulerMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopulerMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopReatedMovies);
  }

  Future<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase.execute();
    emit(const MoviesState(nowPlayingState: RequestState.loaded));
    result.fold(
      (l) => emit(
        state.copyWith(
            nowPlayingState: RequestState.error, nowPlayingMessage: l.message),
      ),
      (r) => emit(state.copyWith(
          nowPlayingMovies: r, nowPlayingState: RequestState.loaded)),
    );
  }

  Future<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final resulte = await getPopulerMoviesUseCase.execute();
    resulte.fold(
      (l) => emit(
        state.copyWith(
            popularMoviesState: RequestState.error,
            popularMoviesMessage: l.message),
      ),
      (r) => emit(state.copyWith(
          popularMovies: r, popularMoviesState: RequestState.loaded)),
    );
  }

  Future<void> _getTopReatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase.execute();
    result.fold(
      (l) => emit(state.copyWith(
        topRatedMessage: l.message,
        topRatedState: RequestState.error,
      )),
      (r) => emit(
        state.copyWith(
          topRatedMoves: r,
          topRatedState: RequestState.loaded,
        ),
      ),
    );
  }
}
