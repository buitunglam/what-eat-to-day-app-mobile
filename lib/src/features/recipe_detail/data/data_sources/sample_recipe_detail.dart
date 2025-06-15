import 'package:whattoeattoday/src/features/recipe_detail/domain/models/receipe_detail.dart';

final RecipeDetail sampleReceipeDetail = RecipeDetail(
  id: "1",
  name: "Spaghetti Carbonara",
  description: "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.",
  imageGaleryUrls: [
    "assets/images/dish1.png",
    "assets/images/dish2.png",
  ],
  ingredients: [
    "200g spaghetti",
    "100g pancetta",
    "2 large eggs",
    "50g pecorino cheese",
    "50g parmesan cheese",
    "Black pepper to taste",
    "Salt to taste"
  ],
  steps: [
    "Cook the spaghetti in salted boiling water until al dente.",
    "In a pan, cook the pancetta until crispy.",
    "In a bowl, whisk together the eggs and cheeses.",
    "Drain the spaghetti and mix with pancetta and egg mixture.",
    "Serve immediately with extra cheese and black pepper."
  ],
  authorName: "Chef Mario Rossi",
  authorImageUrl: "assets/images/author.png",
  authorAddress: "Rome, Italy",
  authorId: "chef_mario_123",
  totalReviews: "1500+ reviews",
  time: "30 minutes",
  rating: "4.8/5.0",
  recipeLink: "https://www.example.com/spaghetti-carbonara-recipe"
);