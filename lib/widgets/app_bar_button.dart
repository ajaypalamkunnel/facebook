import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final void Function() buttonAction;

  AppBarButton({required this.icon, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            icon,
            color: Colors.black,
            size: 25,
          )),
    );
  }
}
