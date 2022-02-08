class Movie {
  String id;
  String title;
  String year;
  List genres;
  // List ratings;
  String poster; //image
  // String contentRating;
  String duration;
  // DateTime releaseDate;
  // int averageRating;
  String originalTitle;
  String storyline;
  List actors;
  // String imdbRating;
  String posterurl; //image

  Movie({
    required this.id,
    required this.title,
    required this.year,
    required this.genres,
    // required this.ratings,
    required this.poster,
    // required this.contentRating,
    required this.duration,
    // required this.releaseDate,
    // required this.averageRating,
    required this.originalTitle,
    required this.storyline,
    required this.actors,
    // required this.imdbRating,
    required this.posterurl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json["id"],
        title: json["title"],
        year: json["year"],
        genres: json["genres"],
        // ratings: json["ratnigs"],
        poster: json["poster"],
        // contentRating: json["contentRating"],
        duration: json["duration"],
        // releaseDate: json["releaseDate"],
        // averageRating: json["averageRating"],
        originalTitle: json["originalTitle"],
        storyline: json["storyline"],
        actors: json["actors"],
        // imdbRating: json["imdbRating"],
        posterurl: json["posterurl"]);
  }
}
