import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/receipe_detail.dart';

class CardTopRecipeDetail extends StatefulWidget {
  final RecipeDetail recipeDetail;
  const CardTopRecipeDetail({super.key, required this.recipeDetail});

  @override
  State<CardTopRecipeDetail> createState() => _CardTopRecipeDetailState();
}

class _CardTopRecipeDetailState extends State<CardTopRecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 10),
      child: SizedBox(
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(
                  widget.recipeDetail.imageGaleryUrls[0],
                  fit: BoxFit.cover,
                ),
              ),
              // Gradient overlay
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColors.black,
                        const Color.fromARGB(90, 0, 0, 0),
                      ],
                    ),
                  ),
                ),
              ),
              // Top star rating
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.colorFFE1B3,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.colorFFAD30, size: 16),
                      SizedBox(width: 4),
                      Text(
                        widget.recipeDetail.rating,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),

              // Title and author at bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.recipeDetail.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.recipeDetail.authorName,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/timer.png",
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "30 mins",
                            style: TextStyle(color: AppColors.white),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                "assets/images/book_mark.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
