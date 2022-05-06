import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.blue.shade100, width: 2)),
              onPressed: () {
                print("room button clicked");
              },
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                "Create\nRoom",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ))
        ],
      ),
    );
  }
}
