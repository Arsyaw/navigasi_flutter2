class Movie {
  int id = 22;
  String title;
  double? VoteAverage;
  String posterPath;
  Movie(
      {required this.id,
      required this.title,
      this.VoteAverage,
      required this.posterPath});
}
