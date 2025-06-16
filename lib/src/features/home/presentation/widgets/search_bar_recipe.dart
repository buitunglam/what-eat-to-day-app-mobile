import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class SearchBarRecipe extends StatefulWidget {
  const SearchBarRecipe({super.key});

  @override
  State<SearchBarRecipe> createState() => _SearchBarRecipeState();
}

class _SearchBarRecipeState extends State<SearchBarRecipe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/search');
              },
              child: AbsorbPointer(
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Search recipe",
                    hintStyle: const TextStyle(color: Color(0xFFA9A9A9)),
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFFD9D9D9),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.gray4, width: 1),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/images/ic_search.png",
                        width: 20, // Adjust as needed
                        height: 20, // Adjust as needed
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(
          "assets/images/button_filter.png",
          width: 40, // Adjust as needed
          height: 40, // Adjust as needed
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
