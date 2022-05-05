import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class StatusSetion extends StatelessWidget {
  const StatusSetion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          mark,
          width: 50,
          height: 50,
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none
        ),
      ),
    );
  }
}
