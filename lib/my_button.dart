import 'package:flutter/material.dart';

class myButtonWidget extends StatelessWidget {
  myButtonWidget({required this.buttonTitle, required this.onPressed});

  final String buttonTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        buttonTitle,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: onPressed,
    );
  }
}
