import 'dart:ffi';

import 'package:movies/Movies/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.gendeIds,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        gendeIds: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        voteAverage: (json["vote_average"]).toDouble(),
        releaseDate: json["release_date"],
      );
}
