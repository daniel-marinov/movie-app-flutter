import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/models/movies.dart';
import 'package:http/http.dart' as http;
import 'package:task/services/movie_service.dart';
import 'package:task/widgets/ListItem.dart';
import 'package:task/widgets/MyAppBar.dart';

import 'detailed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> _movies = <Movie>[];
  MovieService movieService = MovieService();

  @override
  void initState() {
    MovieService().getMovies().then((value) {
      setState(() {
        _movies = [..._movies, ...value];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MallikaAppBar5(
        heading: "Movies",
        hasIcon: true,
        hasSingOut: true,
      ),
      body: ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    movie: _movies[index],
                  ),
                ),
              );
            },
            child: RecipeItemMallika1(
              title: _movies[index].title,
              subtitle: _movies[index].genres.toString(),
              image: _movies[index].posterurl,
            ),
          );
        },
      ),
    );
  }
}
