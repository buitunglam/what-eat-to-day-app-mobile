import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class TabReceipts extends StatefulWidget {
  TabReceipts({super.key});

  final List<String> categories = [
    "Home",
    "Settings",
    "Profile",
    "Food",
    "Travel",
    "Health",
  ];
  @override
  State<TabReceipts> createState() => _TabReceiptsState();
}

class _TabReceiptsState extends State<TabReceipts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.primaryColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              margin: const EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  widget.categories[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
