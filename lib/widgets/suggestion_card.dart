import 'dart:html';

import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [suggestionImage(ajay)],
      ),
    );
  }

  Widget suggestionDetails(name) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 100,
          color: Colors.grey[200],
          child: Column(children: [ListTile(title: Text(name),)],),
        ));
  }

  Widget suggestionImage(img) {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.asset(
            img,
            height: 250,
            fit: BoxFit.cover,
          ),
        ));
  }
}
