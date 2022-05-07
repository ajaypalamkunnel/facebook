import 'package:facebook/sections/header_section.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/widgets/app_bar_button.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/button.dart';
import 'package:facebook/widgets/dividers.dart';
import 'package:facebook/widgets/post_card.dart';
import 'package:facebook/widgets/room_section.dart';
import 'package:facebook/widgets/story_section.dart';
import 'package:facebook/widgets/suggestiion_section.dart';

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
                  buttonColor: Colors.red,
                  textcolor: Colors.black),
              buttonTwo: headerButtons(
                buttonText: 'Photos',
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("photos");
                },
                buttonColor: Colors.green,
                textcolor: Colors.black,
              ),
              buttonThree: headerButtons(
                buttonText: 'Room',
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("room");
                },
                buttonColor: Colors.purple,
                textcolor: Colors.black,
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
            ),
            PostCard(
              avatar: tata,
              userName: "Ratan Tata",
              isVerified: true,
              postdate: '9h',
              caption: 'Infosys vs TCS',
              postImage: p10,
              lcount: '100k',
              ccount: '50k',
              scount: '20k ',
            ),
            PostCard(
              avatar: rocky,
              userName: "Yash",
              isVerified: true,
              postdate: '10h',
              caption: kgf,
              postImage: p12,
              lcount: '110k',
              ccount: '70k',
              scount: '22k ',
            ),
            SuggestionSection(),
            thikdivider,
            PostCard(
              avatar: jb,
              userName: "Jeff Bezos ",
              isVerified: true,
              postdate: '5h',
              caption: jfb,
              postImage: p1,
              lcount: '81k',
              ccount: '52k',
              scount: '2k ',
            ),
            PostCard(
              avatar: dq,
              userName: "Dulquer Salmaan",
              isVerified: true,
              postdate: '10h',
              caption: sinamika,
              postImage: p13,
              lcount: '140k',
              ccount: '50k',
              scount: '25k ',
            ),
            PostCard(
              avatar: pichai,
              userName: "Sundar pichai",
              isVerified: false,
              postdate: '2h',
              caption: "Musk's World",
              postImage: p5,
              lcount: '130k',
              ccount: '65k',
              scount: '2k ',
            )
          ],
        ),
      ),
    );
  }
}
