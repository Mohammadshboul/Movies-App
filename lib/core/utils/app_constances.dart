class AppConstances {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "307b4c66733b7efcfc2ec7b1b4c48c05";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=${AppConstances.apiKey}";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=${AppConstances.apiKey}";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=${AppConstances.apiKey}";
}
