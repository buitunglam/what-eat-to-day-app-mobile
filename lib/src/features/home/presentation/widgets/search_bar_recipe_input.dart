import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/filter.dart';
import 'package:whattoeattoday/src/features/search/presentation/pages/search_page.dart';

class SearchBarRecipeInput extends StatefulWidget {
  const SearchBarRecipeInput({super.key});

  @override
  State<SearchBarRecipeInput> createState() => _SearchBarRecipeInputState();
}

class _SearchBarRecipeInputState extends State<SearchBarRecipeInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: TextField(
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
                    borderSide: BorderSide(color: AppColors.colorD9D9D9, width: 1),
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
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => showFullScreenBottomSheet(context),
          child: Image.asset(
            "assets/images/button_filter.png",
            width: 40, // Adjust as needed
            height: 40, // Adjust as needed
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
