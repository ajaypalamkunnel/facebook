import 'package:facebook/widgets/button.dart';
import 'package:facebook/widgets/dividers.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticaldivider,
          buttonTwo,
          verticaldivider,
          buttonThree,
        ],
      ),
    );
  }
}
