import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Button extends StatelessWidget {

  final String text;

  Button({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        primary: Colors.white,
        backgroundColor: AppColors.mainColor,
        textStyle: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onPressed: () {

      },
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(text),
              ),
            ),
        ],
      ),
    );
  }
}
