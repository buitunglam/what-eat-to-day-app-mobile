import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/data/data_sources/local/sample_receipts.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/new_recipes_item.dart';

class NewRecipes extends StatefulWidget {
  const NewRecipes({super.key});

  @override
  State<NewRecipes> createState() => _NewRecipesState();
}

class _NewRecipesState extends State<NewRecipes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "New Recipes",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 45),
        SizedBox(
          height: 120,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: sampleListNewReceipts.length,
            itemBuilder: (context, index) {
              final newReceipt = sampleListNewReceipts[index];
              return NewRecipesItem(newReceipt: newReceipt);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 15),
          ),
        ),
      ],
    );
  }
}
