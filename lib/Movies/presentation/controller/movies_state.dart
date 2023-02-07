import 'package:equatable/equatable.dart';
import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:movies/core/utils/enums.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  MoviesState(
      {this.nowPlayingMovies = const [],
      this.nowPlayingState = RequestState.loading,
      this.nowPlayingMessage = ""});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [nowPlayingMovies, nowPlayingState, nowPlayingMessage];
}
