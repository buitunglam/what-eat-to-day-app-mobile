import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';
import 'package:whattoeattoday/src/features/profile/presentation/widgets/profile_recipe.dart';
import 'package:whattoeattoday/src/features/profile/presentation/widgets/profile_tag.dart';
import 'package:whattoeattoday/src/features/profile/presentation/widgets/profile_video.dart';
import 'package:whattoeattoday/src/shared/presentation/widgets/header.dart';

enum ProfileTab { recipe, video, tag }

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileTab tabActive = ProfileTab.recipe;
  void _onTabSelected(ProfileTab tab) {
    setState(() {
      tabActive = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              title: 'Profile',
              haveBackIcon: false,
              haveRightIcon: true,
              onRightIconPressed: () {
                // Handle right icon press
              },
            ),
            SizedBox(height: 30),

            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://www.example.com/profile_image.jpg', // Replace with actual image URL
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Recipe"),
                          SizedBox(height: 5),
                          Text(
                            "4",
                            style: TextStyle(
                              color: AppColors.color121212,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Followers"),
                          SizedBox(height: 5),
                          Text(
                            "100",
                            style: TextStyle(
                              color: AppColors.color121212,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Following"),
                          SizedBox(height: 5),
                          Text(
                            "50",
                            style: TextStyle(
                              color: AppColors.color121212,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              "Username",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text("Private Chef", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            const Text("Email: user@example.com"),

            Text("Passionate about food and life 🥘🍲🍝🍱"),
            Text("More...", style: TextStyle(color: AppColors.primaryColor)),
            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(ProfileTab.recipe),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == ProfileTab.recipe
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == ProfileTab.recipe
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Recipe"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(ProfileTab.video),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == ProfileTab.video
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == ProfileTab.video
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Video"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () => _onTabSelected(ProfileTab.tag),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          tabActive == ProfileTab.tag
                              ? AppColors.primaryColor
                              : AppColors.white,
                      foregroundColor:
                          tabActive == ProfileTab.tag
                              ? AppColors.white
                              : AppColors.primaryColor,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Tag"),
                  ),
                ),
              ],
            ),

            Expanded(
              child:
                  tabActive == ProfileTab.recipe
                      ? ProfileRecipe()
                      : tabActive == ProfileTab.video
                      ? ProfileVideo()
                      : tabActive == ProfileTab.tag
                      ? ProfileTag()
                      : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
