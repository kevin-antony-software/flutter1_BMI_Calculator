import 'package:flutter/material.dart';

class roundedIconButton extends StatelessWidget {
  roundedIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.blueAccent[200],
      child: Icon(icon),
    );
  }
}
