import 'package:flutter/material.dart';
import 'package:movies/Movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/Movies/data/repository/movies_repository.dart';
import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movie> movies = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDatasource baseMovieRemoteDatasource =
        MovieRemoteDataSource();
    BaseMoviesRepository moviesRepository =
        MoviesRepository(baseMovieRemoteDatasource);
    final resulte =
        await GetNowPlayingMoviesUseCase(moviesRepository).execute();
    resulte.fold((l) => null, (r) {
      movies = resulte;
    });

    print(resulte);
  }
}
