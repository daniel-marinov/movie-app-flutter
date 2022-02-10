// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task/models/movies.dart';
import 'package:task/screens/watch_list.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.movie}) : super(key: key);

  final Movie movie;
  // final List<Movie> favourites = <Movie>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white70),
      ),
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 35,
              child: Center(
                child: Image(
                  image: NetworkImage(movie.posterurl),
                ),
              ),
            ),
            const Spacer(
              flex: 65,
            )
          ]),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32.0))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(1.0))),
                          height: 4,
                          width: 48,
                        ),
                      ),
                      // MyTheme.mediumVerticalPadding,
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(movie.actors.join(", "),
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      // MyTheme.largeVerticalPadding,
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Row(
                          children: [
                            Text(movie.year,
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    movie.duration,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        32.0, 4.0, 32.0, 8.0),
                                    height: 10,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Color(0xFF36F1CD)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          "Storyline",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // MyTheme.mediumVerticalPadding,
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          movie.storyline,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 2,
                            ),
                            Expanded(
                              flex: 4,
                              child: ElevatedButton(
                                  // TODO: uncomment to go to Screen
                                  onPressed: () {},
                                  child: const Text(
                                    "Add to Favourites",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )),
                            ),
                            const Spacer(
                              flex: 2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
