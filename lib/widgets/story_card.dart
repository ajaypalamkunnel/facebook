import 'package:facebook/widgets/app_bar_button.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String name;
  final String image;
  final bool button;
  final String avatar;

  StoryCard(
      {required this.name,
      required this.image,
      this.button = false,
      required this.avatar}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: button
                ? AppBarButton(
                    icon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("Add story button clicked");
                    })
                : Avatar(displayImage: avatar),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
