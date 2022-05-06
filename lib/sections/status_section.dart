import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSetion extends StatelessWidget {
  const StatusSetion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: mark, statusIndicator: false),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
