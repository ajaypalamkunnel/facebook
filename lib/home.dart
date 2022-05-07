import 'package:facebook/sections/header_section.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/widgets/app_bar_button.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/button.dart';
import 'package:facebook/widgets/dividers.dart';
import 'package:facebook/widgets/post_card.dart';
import 'package:facebook/widgets/room_section.dart';
import 'package:facebook/widgets/story_section.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            AppBarButton(
                icon: Icons.search,
                buttonAction: () {
                  print("search button clicked");
                }),
            AppBarButton(
                icon: Icons.message,
                buttonAction: () {
                  print("message button clicked");
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSetion(),
            thindivider,
            HeaderButtonSection(
              buttonOne: headerButtons(
                  buttonText: 'Live',
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("live");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButtons(
                buttonText: 'Photos',
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("photos");
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButtons(
                buttonText: 'Room',
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("room");
                },
                buttonColor: Colors.purple,
              ),
            ),
            thikdivider,
            RoomSection(),
            thikdivider,
            StorySection(),
            thikdivider,
            PostCard(
              avatar: dq,
              userName: "Dulquer Salmaan",
              isVerified: true,
              postdate: '5h',
              caption: sitaRaman,
              postImage: p14,
              lcount: '10k',
              ccount: '5k',
              scount: '2k ',
            )
          ],
        ),
      ),
    );
  }
}
