import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/recipe_detail/presentation/pages/receipe_detail_page.dart';
import 'package:whattoeattoday/src/features/save_recipes/presentation/pages/save_recipes_page.dart';

class SavedRecipeTabNavigator extends StatelessWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  const SavedRecipeTabNavigator({
    super.key,
    required this.showBottomBarNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/saved',
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          showBottomBarNotifier.value = false;
        } else {
          showBottomBarNotifier.value = true;
        }
        switch (settings.name) {
          case '/detail':
            return MaterialPageRoute(builder: (_) => ReceipeDetailPage());
          case '/saved':
          default:
            return MaterialPageRoute(builder: (_) => SaveRecipesPage());
        }
      },
    );
  }
}
