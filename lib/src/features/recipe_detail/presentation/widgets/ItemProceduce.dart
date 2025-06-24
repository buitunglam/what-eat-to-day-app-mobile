import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/Proceduce.dart';

class Itemproceduce extends StatelessWidget {
  final Proceduce proceduce;
  const Itemproceduce({super.key, required this.proceduce});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Step ${proceduce.step}",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                proceduce.content,
                style: TextStyle(color: AppColors.colorA9A9A9, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
