import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> gendeIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.gendeIds,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        gendeIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}
