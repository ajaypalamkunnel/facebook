import 'package:facebook/widgets/app_bar_button.dart';
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
      ),
    );
  }
}
