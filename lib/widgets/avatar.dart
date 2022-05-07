import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool statusIndicator;
  final bool statusBar;

  Avatar(
      {required this.displayImage,
      this.statusIndicator = false,
      this.statusBar = false}) {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: statusBar
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
            ),
          ),
        ),
        statusIndicator
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ))),
              )
            : SizedBox()
      ],
    );
  }
}
