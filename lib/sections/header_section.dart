import 'package:facebook/widgets/dividers.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          sectionButton(
              icon: Icons.video_call,
              iconColor: Colors.red,
              label: 'Live',
              action: () {
                print("Live button clicke");
              }),
          verticaldivider,
          sectionButton(
              icon: Icons.photo_library,
              iconColor: Colors.green,
              label: 'Photo',
              action: () {
                print("photo button clicke");
              }),
          verticaldivider,
          sectionButton(
              icon: Icons.video_call,
              iconColor: Colors.purple,
              label: 'Room',
              action: () {
                print("Room button clicke");
              }),
        ],
      ),
    );
  }

  Widget sectionButton(
      {required IconData icon,
      required Color iconColor,
      required String label,
      required Function() action}) {
    return TextButton.icon(
        onPressed: action,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.black),
        ));
  }
}
