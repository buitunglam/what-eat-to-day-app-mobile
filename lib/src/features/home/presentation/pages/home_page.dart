import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/list_receipts_by_category.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/new_recipes.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/search_bar_recipe.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/tab_receipts.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/title_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const TitleHome(),
              const SizedBox(height: 30),
              const SearchBarRecipe(),
              const SizedBox(height: 30),
              TabReceipts(),
              const SizedBox(height: 90),
              ListReceiptsByCategory(),
              SizedBox(height: 20),
              NewRecipes(),
            ],
          ),
        ),
      ),
    );
  }
}
