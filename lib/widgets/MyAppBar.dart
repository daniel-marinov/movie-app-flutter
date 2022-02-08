// - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
// Place AppBar inside the app bar property of a Scaffold
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

import 'package:flutter/material.dart';
import 'package:task/screens/watch_list.dart';

class MallikaAppBar5 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String heading;
  // IconButton? iconButton;
  bool hasIcon;

  MallikaAppBar5({Key? key, required this.heading, required this.hasIcon})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 1,
        title: Text(
          heading,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          hasIcon
              ? IconButton(
                  icon: const Icon(Icons.star_border_outlined,
                      color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WatchList()),
                    );
                  },
                )
              : Container()
        ]);
  }
}
