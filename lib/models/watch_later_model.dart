import 'package:equatable/equatable.dart';
import 'package:task/models/movies.dart';

class WishList extends Equatable {
  final List<Movie> movies;

  const WishList({this.movies = const <Movie>[]});
  @override
  List<Object> get props => throw [movies];
}
