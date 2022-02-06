import 'package:flutter/material.dart';

class AppTextBold extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  const AppTextBold({Key? key,
  required this.text,
    this.size=36,
  this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle(
        fontSize:  size,
        color: color,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}
