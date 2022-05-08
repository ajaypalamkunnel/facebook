import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(children: [
        suggestionImage(),
        suggestiondetails(),
      ]),
    );
  }

//details

  Widget suggestiondetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          height: 140,
          color: Colors.grey[200],
          child: Column(
            children: [
              ListTile(
                title: Text("Ajay ps"),
                subtitle: Text("4 Mutual Friends"),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    addfriendbutton(),
                    removebutton(),
                  ],
                ),
              )
            ],
          ),
        ));
  }

//add friend button

  Widget addfriendbutton() {
    return TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        onPressed: () {
          print("Add friend");
        },
        icon: Icon(
          Icons.account_box,
          color: Colors.white,
        ),
        label: Text(
          "Add Friend",
          style: TextStyle(color: Colors.white),
        ));
  }

//remove button
  Widget removebutton() {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Remove",
          style: TextStyle(color: Colors.black),
        ));
  }

//image

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.asset(
            ajay,
            height: 250,
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ));
  }
}
