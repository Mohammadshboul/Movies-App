import 'package:get_it/get_it.dart';
import 'package:movies/Movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/Movies/data/repository/movies_repository.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';
import 'package:movies/Movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movies/Movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //Bloc
    sl.registerFactory(() => MoviesBloc(sl()));
    //UseCases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    //Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));
    //Datasource
    sl.registerLazySingleton<BaseMovieRemoteDatasource>(
        () => MovieRemoteDataSource());
  }
}
