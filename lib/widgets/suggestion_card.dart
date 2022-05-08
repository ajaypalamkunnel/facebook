import 'dart:html';

import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuggestionCard extends StatelessWidget {
  final String name;
  final String mutual;
  final String image;

  SuggestionCard(
      {required this.name, required this.mutual, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionDetails(
            name: name,
            mutual: mutual,
          ),
          suggestionImage(image),
        ],
      ),
    );
  }

  Widget suggestionDetails({required name, required mutual}) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 130,
          color: Colors.grey[200],
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text(mutual),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    suggestionBotton(
                        buttonAction: () {
                          print("Add friend");
                        },
                        buttonIcon: Icons.account_box,
                        buttonColor: Colors.white,
                        buttonText: "Add Friend"),
                    suggestionButtonRemove()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget suggestionButtonRemove() {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.grey[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        onPressed: () {
          print("remove pressed");
        },
        child: Text(
          "Remove",
          style: TextStyle(color: Colors.black),
        ));
  }

  Widget suggestionBotton({
    required Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required String buttonText,
  }) {
    return TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue[700],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: Colors.white,
        ),
        label: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
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
            alignment: Alignment.topCenter,
            height: 200,
            fit: BoxFit.cover,
          ),
        ));
  }
}
