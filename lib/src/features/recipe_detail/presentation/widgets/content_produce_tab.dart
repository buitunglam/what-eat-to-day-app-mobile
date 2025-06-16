import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/data/data_sources/sample_recipe_detail.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/ItemProceduce.dart';

class ContentProduceTab extends StatelessWidget {
  const ContentProduceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/cook.png", width: 24, height: 24),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    "1 serve",
                    style: TextStyle(color: AppColors.colorA9A9A9),
                  ),
                ),
              ],
            ),

            Text("6 steps", style: TextStyle(color: AppColors.colorA9A9A9)),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: sampleProceduces.length,
            itemBuilder: (context, index) {
              final proceduce = sampleProceduces[index];
              return Itemproceduce(
                proceduce: proceduce,
              );
            },
          ),
        ),
      ],
    );
    ;
  }
}
