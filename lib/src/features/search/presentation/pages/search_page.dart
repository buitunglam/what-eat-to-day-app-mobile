import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/search_bar_recipe.dart';
import 'package:whattoeattoday/src/features/home/presentation/widgets/search_bar_recipe_input.dart';
import 'package:whattoeattoday/src/features/search/presentation/widgets/result_widget.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Header(
                title: "Search",
                haveBackIcon: true,
                haveRightIcon: true,
                onBackPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 20),
              SearchBarRecipeInput(),
              Expanded(child: ResultWidget())
            ],
          ),
        ),
      ),
    );
  }
}
