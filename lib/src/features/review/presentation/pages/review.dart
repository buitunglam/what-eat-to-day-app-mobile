import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/review/presentation/widgets/item_comment.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            children: [
              Header(
                title: "Reviews",
                haveTitle: true,
                haveBackIcon: true,
                onBackPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "200 comments",
                    style: TextStyle(
                      color: AppColors.colorA9A9A9,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "115 saved",
                    style: TextStyle(
                      color: AppColors.colorA9A9A9,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leave a comment",
                    style: TextStyle(
                      color: AppColors.color121212,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.colorD9D9D9, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: TextField(
                            minLines: 3,
                            maxLines: 3,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "Say something...",
                              hintStyle: const TextStyle(
                                color: Color(0xFFA9A9A9),
                              ),
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFFD9D9D9),
                                  width: 0.1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: AppColors.colorD9D9D9,
                                  width: 0.1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: -10,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            backgroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: Size(0, 0),
                          ),
                          child: Text(
                            'Send',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ItemComment();
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
