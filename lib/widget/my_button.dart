import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
        required this.icon,
        required this.text,
        required this.padding,
        this.onPressed});

  final IconData icon;
  final String text;
  final double padding;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: padding),
      child: Material(
        elevation: 16,
        borderRadius: BorderRadius.circular(48),
        child: ListTile(
          onTap: onPressed, //Uri(scheme: openParameter, path: path)
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(color: Colors.teal),
          ),
        ),
      ),
    );
  }
}