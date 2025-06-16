import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/ingredient.dart';

class ItemIngredient extends StatelessWidget {
  final Ingredient ingredient;
  const ItemIngredient({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.gray4,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      ingredient.imageUrl,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    ingredient.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                ingredient.quantity,
                style: TextStyle(color: AppColors.colorA9A9A9, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
