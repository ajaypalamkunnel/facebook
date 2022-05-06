import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            name: "Add to story",
            image: mark,
            avatar: mark,
            button: true,
          ),
          StoryCard(
            name: "Ratan Tata",
            image: p9,
            avatar: tata,
            button: false,
          ),
          StoryCard(
            name: "Elone Musk",
            image: p7,
            avatar: elone,
            button: false,
          ),
          StoryCard(
            name: "Yash",
            image: p12,
            avatar: rocky,
            button: false,
          ),
          StoryCard(
            name: "Santhosh",
            image: p8,
            avatar: santhosh,
            button: false,
          ),
          StoryCard(
            name: "Sundar pichai",
            image: p6,
            avatar: pichai,
            button: false,
          ),
          StoryCard(
            name: "Dulquer Salmaan",
            image: p13,
            avatar: dq,
            button: false,
          ),
        ],
      ),
    );
  }
}
