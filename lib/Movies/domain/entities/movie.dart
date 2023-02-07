import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> gendrIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.gendrIds,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        gendrIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}
