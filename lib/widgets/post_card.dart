import 'package:facebook/sections/header_section.dart';
import 'package:facebook/widgets/app_bar_button.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/dividers.dart';
import 'package:facebook/widgets/verified.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String userName;
  final bool isVerified;
  final String postdate;
  final String caption;
  final String postImage;
  final String lcount;
  final String ccount;
  final String scount;

  PostCard({
    required this.avatar,
    required this.userName,
    required this.isVerified,
    required this.postdate,
    required this.caption,
    required this.postImage,
    required this.lcount,
    required this.ccount,
    required this.scount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardHeader(),
          captionSection(caption),
          imageSection(postImage),
          reactionSection(lcount: lcount, ccount: ccount, scount: scount)
        ],
      ),
    );
  }

  Widget reactionSection({
    required String lcount,
    required String ccount,
    required String scount,
  }) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  )),
              reactionText(text: lcount),
            ],
          ),
        ),
        Container(
            child: Row(
          children: [
            reactionText(
              text: ccount,
            ),
            SizedBox(
              width: 3,
            ),
            reactionText(text: 'Comments'),
            SizedBox(
              width: 10,
            ),
            reactionText(text: scount),
            reactionText(text: "Shares"),
            SizedBox(
              width: 10,
            ),
            Avatar(
              displayImage: avatar,
              width: 25,
              height: 25,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[700],
              size: 25,
            ),
            thindivider,
            //HeaderButtonSection()
          ],
        ))
      ]),
    );
  }

  Widget reactionText({required String text}) {
    return Text(text, style: TextStyle(color: Colors.grey[700]));
  }

  Widget imageSection(postImage) {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget captionSection(caption) {
    return Container(
      child: Text(
        caption,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget postcardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar),
      title: Row(
        children: [
          Text(
            userName,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          isVerified ? Verification() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(postdate),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("For more");
          },
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }
}
