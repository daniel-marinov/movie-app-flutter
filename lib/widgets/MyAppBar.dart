// - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
// Place AppBar inside the app bar property of a Scaffold
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/screens/watch_list.dart';
import 'package:task/services/auth_service.dart';

class MallikaAppBar5 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String heading;
  // IconButton? iconButton;
  bool hasIcon;
  bool hasSingOut;

  MallikaAppBar5(
      {Key? key,
      required this.heading,
      required this.hasIcon,
      required this.hasSingOut})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
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
                icon:
                    const Icon(Icons.star_border_outlined, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WatchList()),
                  );
                },
              )
            : Container(),
        hasSingOut
            ? IconButton(
                icon: const Icon(Icons.exit_to_app, color: Colors.white),
                onPressed: () {
                  authService.signOut();
                },
              )
            : Container()
      ],
    );
  }
}
