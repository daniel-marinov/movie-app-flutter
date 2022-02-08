import 'package:flutter/material.dart';
import 'package:task/widgets/MyAppBar.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MallikaAppBar5(
      heading: "Your Watch List",
      hasIcon: false,
    ));
  }
}
