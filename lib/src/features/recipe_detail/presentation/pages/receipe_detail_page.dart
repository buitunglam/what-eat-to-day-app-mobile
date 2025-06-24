import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/data/data_sources/local/sample_recipe_detail.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/card_top_recipe_detail.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/content_ingredient_tab.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/content_popover_recipe_detail.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/content_produce_tab.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/rate_dialog.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/share_dialog.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/popover.dart';

class ReceipeDetailPage extends StatefulWidget {
  const ReceipeDetailPage({super.key});

  @override
  State<ReceipeDetailPage> createState() => _ReceipeDetailState();
}

class _ReceipeDetailState extends State<ReceipeDetailPage> {
  final recipeDetail = sampleReceipeDetail;
  var isIngredientTab = true;
  var isOpen = false;

  void _onTabSelected(bool isIngredient) {
    setState(() {
      isIngredientTab = isIngredient;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey rightIconKey = GlobalKey();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            children: [
              Header(
                haveTitle: false,
                haveBackIcon: true,
                haveRightIcon: true,
                rightIconKey: rightIconKey,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                onRightIconPressed: () {
                  Popover.show(
                    context: context,
                    targetKey: rightIconKey,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ContentPopoverRecipeDetail(
                          onClickToShare: () {
                            showDialog(
                              context: context,
                              builder: (context) => const ShareDialog(),
                            );
                          },
                          onClickToRate: () {
                            showDialog(
                              context: context,
                              builder: (context) => const RateDialog(),
                            );
                          },
                          onClickToReview: () {
                            Popover.dismiss();
                            Navigator.pushNamed(context, '/review');
                          },
                          onClickToSave: () {
                            // Handle save action
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              CardTopRecipeDetail(recipeDetail: recipeDetail),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      "Spicy chicken burger with French fries",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "(13k Reviews)",
                    style: TextStyle(color: AppColors.colorA9A9A9),
                  ),
                ],
              ),

              SizedBox(height: 10),
              // Author
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/author.png",
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Laura wilson"),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/location.png",
                                width: 15,
                              ),
                              Text("Lagos, Nigeria"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Follow'),
                    ),
                  ),
                ],
              ),
              /**Tab ingredient and produce*/
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => _onTabSelected(true),
                      style: TextButton.styleFrom(
                        backgroundColor:
                            isIngredientTab
                                ? AppColors.primaryColor
                                : AppColors.white,
                        foregroundColor:
                            isIngredientTab
                                ? AppColors.white
                                : AppColors.primaryColor,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Ingredients"),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () => _onTabSelected(false),
                      style: TextButton.styleFrom(
                        backgroundColor:
                            isIngredientTab
                                ? AppColors.white
                                : AppColors.primaryColor,
                        foregroundColor:
                            isIngredientTab
                                ? AppColors.primaryColor
                                : AppColors.white,
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Produce"),
                    ),
                  ),
                ],
              ),

              /**Content Tab */
              SizedBox(height: 20),
              Expanded(
                child:
                    isIngredientTab
                        ? const ContentIngredientTab()
                        : const ContentProduceTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
