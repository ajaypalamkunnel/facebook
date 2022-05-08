import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/suggestion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(children: [
        ListTile(
          title: Text(
            "People You May Know",
          ),
          trailing: IconButton(
              onPressed: () {
                print("more clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              )),
        ),
        Container(
          height: 390,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(
                image: ajay,
                mutual: '5 Mutual',
                name: 'Ajay',
              )
            ],
          ),
        )
      ]),
    );
  }
}
