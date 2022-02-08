// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RecipeItemMallika1 extends StatelessWidget {
  String title;
  String subtitle;
  String image;
  RecipeItemMallika1(
      {required this.title,
      required this.subtitle,
      Key? key,
      required this.image})
      : super(key: key);
  // final dishImage =
  //     "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FRectangle%2013.png?alt=media&token=6a5f056c-417c-48d3-b737-f448e4f13321";
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 50,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              image,
              errorBuilder: (context, error, stackTrace) {
                return Text("No Image");
              },
            )),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Text(subtitle),
        ],
      ),
      trailing: Column(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
    );
  }
}
