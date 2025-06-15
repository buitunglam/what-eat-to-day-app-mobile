import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/data/data_sources/local/sample_receipts.dart';
import 'package:whattoeattoday/src/features/save_recipes/presentation/widgets/card_save_recipe_item.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

class SaveRecipesPage extends StatefulWidget {
  const SaveRecipesPage({super.key});

  @override
  State<SaveRecipesPage> createState() => _SaveRecipesPageState();
}

class _SaveRecipesPageState extends State<SaveRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(
            title: "Save Recipes",
            haveBackIcon: false,
            haveRightIcon: false,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final recipe = sampleListNewReceipts[index];
                return CardSaveRecipeItem(saveRecipe: recipe);
              },
              itemCount: sampleListNewReceipts.length,
            ),
          ),
        ],
      ),
    );
  }
}
