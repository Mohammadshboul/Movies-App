import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies/Movies/presentation/controller/movies_event.dart';
import 'package:movies/Movies/presentation/controller/movies_state.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/core/utils/enums.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();
      emit(MoviesState(nowPlayingState: RequestState.loaded));
      result.fold(
        (l) => emit(
          MoviesState(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message),
        ),
        (r) => emit(MoviesState(
            nowPlayingMovies: r, nowPlayingState: RequestState.loaded)),
      );
    });
  }
}
