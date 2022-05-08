import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/suggestion_card.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 445,
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
                name: 'Ajay ps',
                mutual: '5 Mutual Friends',
                image: ajay,
              ),
              SuggestionCard(
                name: 'Tovino Thomas',
                mutual: '15 Mutual Friends',
                image: tovino,
              ),
              SuggestionCard(
                name: 'Sujith Bhakthan',
                mutual: '6 Mutual Friends',
                image: sujith,
              ),
              SuggestionCard(
                  name: 'Fishing Freaks',
                  mutual: '8 Mutual Friends',
                  image: ffks),
              SuggestionCard(
                name: 'Mohanlal',
                mutual: '4 Mutual Friends',
                image: mohanlal,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
