import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/data/data_sources/local/sample_receipts.dart';
import 'package:whattoeattoday/src/features/save_recipes/presentation/widgets/card_save_recipe_item.dart';

class ProfileRecipe extends StatefulWidget {
  const ProfileRecipe({super.key});

  @override
  State<ProfileRecipe> createState() => _ProfileRecipeState();
}

class _ProfileRecipeState extends State<ProfileRecipe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final recipe = sampleListNewReceipts[index];
              return CardSaveRecipeItem(saveRecipe: recipe);
            },
            itemCount: sampleListNewReceipts.length,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
