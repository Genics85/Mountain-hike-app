import 'package:flutter/material.dart';
import 'package:mountain/widgets/appColor.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final bool? isResponsive;
  const AppButton ({Key? key,
  this.width,
  this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
            width: width,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(10),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage("images/button-one.png"),
            fit: BoxFit.cover,
          ),
        ],
      )
    );
  }
}
