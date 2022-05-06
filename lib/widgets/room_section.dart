import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
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
             
            createRoomButtom(),
            Avatar(
              displayImage: tata,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: pichai,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: bro,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: elone,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: lulu,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: santhosh,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: dq,
              statusIndicator: true,
            ),
            Avatar(
              displayImage: rocky,
              statusIndicator: true,
            ),
          ]),
    );
  }

  Widget createRoomButtom() {
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5),
      child: OutlinedButton.icon(
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
          )),
    );
  }
}
