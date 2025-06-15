import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Jega",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              "What are you cooking today?",
              style: TextStyle(color: AppColors.colorA9A9A9),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.coloFF9C00,
          ),
          child: Image.asset("assets/images/avatar.png", width: 50, height: 50),
        ),
      ],
    );
  }
}
