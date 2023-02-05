import 'package:dartz/dartz.dart';
import 'package:movies/Movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:movies/core/error/failure.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopulerMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
