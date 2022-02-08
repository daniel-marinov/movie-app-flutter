import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task/models/movies.dart';

var moviesUrl =
    'https://raw.githubusercontent.com/FEND16/movie-json-data/master/json/movies-coming-soon.json';

class MovieService {
  Future<List<Movie>> getMovies() async {
    http.Response res = await http.get(Uri.parse(moviesUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> movies = json.decode(res.body);
        return movies.map((e) => Movie.fromJson(e)).toList();
      } else {
        return <Movie>[];
      }
    } catch (e) {
      // print(e);
      return <Movie>[];
    }
  }
}
