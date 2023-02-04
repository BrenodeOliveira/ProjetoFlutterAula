import 'package:flutter/material.dart';

class ButtonSpaced extends StatelessWidget {
  const ButtonSpaced({super.key,
    required this.title,
    required this.route,
    required this.buttonColor,
  });

  final String title;
  final String route;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: buttonColor,
          borderRadius: BorderRadius.circular(1000),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}