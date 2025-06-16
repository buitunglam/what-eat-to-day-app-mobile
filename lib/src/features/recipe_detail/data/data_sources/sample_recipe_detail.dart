import 'package:whattoeattoday/src/features/recipe_detail/domain/models/Proceduce.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/ingredient.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/receipe_detail.dart';

final RecipeDetail sampleReceipeDetail = RecipeDetail(
  id: "1",
  name: "Spaghetti Carbonara",
  description:
      "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.",
  imageGaleryUrls: ["assets/images/dish1.png", "assets/images/dish2.png"],
  ingredients: [
    "200g spaghetti",
    "100g pancetta",
    "2 large eggs",
    "50g pecorino cheese",
    "50g parmesan cheese",
    "Black pepper to taste",
    "Salt to taste",
  ],
  steps: [
    "Cook the spaghetti in salted boiling water until al dente.",
    "In a pan, cook the pancetta until crispy.",
    "In a bowl, whisk together the eggs and cheeses.",
    "Drain the spaghetti and mix with pancetta and egg mixture.",
    "Serve immediately with extra cheese and black pepper.",
  ],
  authorName: "Chef Mario Rossi",
  authorImageUrl: "assets/images/author.png",
  authorAddress: "Rome, Italy",
  authorId: "chef_mario_123",
  totalReviews: "1500+ reviews",
  time: "30 minutes",
  rating: "4.8/5.0",
  recipeLink: "https://www.example.com/spaghetti-carbonara-recipe",
);

final List<Ingredient> sampleIngredients = [
  Ingredient(
    id: 1,
    name: "Tomato",
    quantity: "200g",
    imageUrl: "assets/images/ingre1.png",
  ),
  Ingredient(
    id: 2,
    name: "Onion",
    quantity: "100g",
    imageUrl: "assets/images/ingre2.png",
  ),
  Ingredient(
    id: 3,
    name: "Garlic",
    quantity: "2 cloves",
    imageUrl: "assets/images/ingre3.png",
  ),
  Ingredient(
    id: 4,
    name: "Basil",
    quantity: "Fresh",
    imageUrl: "assets/images/ingre4.png",
  ),
  Ingredient(
    id: 5,
    name: "Olive Oil",
    quantity: "2 tbsp",
    imageUrl: "assets/images/ingre2.png",
  ),
  Ingredient(
    id: 6,
    name: "Salt",
    quantity: "To taste",
    imageUrl: "assets/images/ingre4.png",
  ),
];

final List<Proceduce> sampleProceduces = [
  Proceduce(
    id: 1,
    step: "1",
    content: "Boil water and cook pasta until al dente.",
  ),
  Proceduce(
    id: 2,
    step: "2",
    content: "In a pan, sauté garlic and onion in olive oil.",
  ),
  Proceduce(id: 3, step: "3", content: "Add tomatoes and cook until soft."),
  Proceduce(id: 4, step: "4", content: "Mix pasta with sauce and serve hot."),
  Proceduce(id: 5, step: "5", content: "Sprinkle with fresh basil and cheese. "),
  Proceduce(id: 6, step: "6", content: "Enjoy your delicious pasta dish!"),
];
