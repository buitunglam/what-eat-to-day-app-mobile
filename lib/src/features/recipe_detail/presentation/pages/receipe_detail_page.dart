import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/data/data_sources/sample_recipe_detail.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/widgets/card_top_recipe_detail.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

class ReceipeDetailPage extends StatefulWidget {
  const ReceipeDetailPage({super.key});

  @override
  State<ReceipeDetailPage> createState() => _ReceipeDetailState();
}

class _ReceipeDetailState extends State<ReceipeDetailPage> {
  final recipeDetail = sampleReceipeDetail;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            children: [
              Header(haveTitle: false, haveBackIcon: true, haveRightIcon: true),
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
            ],
          ),
        ),
      ),
    );
  }
}
