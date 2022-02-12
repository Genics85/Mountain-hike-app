import 'package:flutter/material.dart';
import 'package:mountain/widgets/appColor.dart';

class AppStar extends StatelessWidget {
  final bool filled;
  const AppStar({Key? key,
  this.filled=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(filled?Icons.star:Icons.star_border,color:AppColors.starColor);
  }
}
