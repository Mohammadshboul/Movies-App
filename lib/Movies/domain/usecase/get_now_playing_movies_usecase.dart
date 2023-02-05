import 'package:dartz/dartz.dart';
import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:movies/Movies/domain/repository/base_movies_repository.dart';
import 'package:movies/core/error/failure.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);
  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
