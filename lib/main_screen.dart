import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/core/router/home_tab_navigator.dart';
import 'package:whattoeattoday/src/core/router/save_recipe_tab_navigator.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class MainScreen extends StatefulWidget {
  final ValueNotifier<bool> showBottomBarNotifier;
  const MainScreen({super.key, required this.showBottomBarNotifier});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late final ValueNotifier<bool> showBottomBarNotifier;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    showBottomBarNotifier = ValueNotifier(true);
    _screens = [
      HomeTabNavigator(showBottomBarNotifier: showBottomBarNotifier),
      SavedRecipeTabNavigator(showBottomBarNotifier: showBottomBarNotifier),
    ];
  }

  void _onTabSelected(int index) {
    setState(() => _currentIndex = index);
    print("Selected index: $index");
  }

  void _onPlusPressed() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Plus Button Pressed"),
            content: const Text("You can open a new screen or a modal here."),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showBottomBarNotifier,
      builder: (context, showBottomBar, child) {
        return Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: IndexedStack(index: _currentIndex, children: _screens),
          floatingActionButton:
              showBottomBar
                  ? Transform.translate(
                    offset: const Offset(0, 7), // Move FAB up by 20 pixels
                    child: FloatingActionButton(
                      onPressed: _onPlusPressed,
                      shape: const CircleBorder(),
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: AppColors.white,
                      ),
                    ),
                  )
                  : null,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
              showBottomBar
                  ? SizedBox(
                    height: kBottomNavigationBarHeight + 40,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned.fill(
                          bottom: -20,
                          child: Image.asset(
                            'assets/images/bg_bottombar.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        ClipRect(
                          child: BottomNavigationBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            currentIndex:
                                _currentIndex > 1
                                    ? _currentIndex - 1
                                    : _currentIndex,
                            onTap: (index) {
                              _onTabSelected(
                                index >= 2 ? index + 1 : index,
                              ); // adjust for FAB
                            },
                            items: [
                              BottomNavigationBarItem(
                                icon: Image.asset(
                                  _currentIndex == 0
                                      ? "assets/images/home_active.png"
                                      : "assets/images/home.png",
                                  width: 24,
                                  height: 24,
                                ),
                                label: '',
                              ),
                              BottomNavigationBarItem(
                                icon: Image.asset(
                                  _currentIndex == 1
                                      ? "assets/images/favourite_active.png"
                                      : "assets/images/favourite.png",
                                  width: 24,
                                  height: 24,
                                ),
                                label: '',
                              ),
                              const BottomNavigationBarItem(
                                icon: SizedBox(
                                  width: 40,
                                ), // Adjust width as needed
                                label: '',
                              ),
                              BottomNavigationBarItem(
                                icon: Image.asset(
                                  _currentIndex == 2
                                      ? "assets/images/notification_active.png"
                                      : "assets/images/notification.png",
                                  width: 24,
                                  height: 24,
                                ),
                                label: '',
                              ),
                              BottomNavigationBarItem(
                                icon: Image.asset(
                                  _currentIndex == 3
                                      ? "assets/images/profile_active.png"
                                      : "assets/images/profile.png",
                                  width: 24,
                                  height: 24,
                                ),
                                label: '',
                              ),
                            ],
                            type: BottomNavigationBarType.fixed,
                            selectedItemColor: AppColors.primaryColor,
                            unselectedItemColor: Colors.grey,
                            showUnselectedLabels: true,
                          ),
                        ),
                      ],
                    ),
                  )
                  : null,
        );
      },
    );
  }
}
