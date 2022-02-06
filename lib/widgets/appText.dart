import 'package:flutter/material.dart';

class AppText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  const AppText({Key? key,
  required this.text,
  this.size=36,
  this.color=Colors.black54}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      decoration:TextDecoration.none,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.normal

    ),);
  }
}
