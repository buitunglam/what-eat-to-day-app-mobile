import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final bool haveTitle;
  final bool haveBackIcon;
  final bool haveRightIcon;
  final Function? onBackPressed;
  final Function? onRightIconPressed;
  final GlobalKey? rightIconKey;

  const Header({
    super.key,
    this.title = "",
    this.haveTitle = true,
    this.haveBackIcon = false,
    this.haveRightIcon = false,
    this.onBackPressed,
    this.onRightIconPressed,
    this.rightIconKey,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (haveBackIcon)
          GestureDetector(
            onTap: () {
              if (onBackPressed != null) {
                onBackPressed!();
              } else {
                Navigator.pop(context);
              }
            },
            child: Image.asset(
              'assets/images/arrow-left.png',
              width: 25,
              height: 25,
            ),
          )
        else
          const SizedBox(width: 30, height: 30),
        if (haveTitle)
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )
        else
          const SizedBox(width: 30, height: 30),
        if (haveRightIcon)
          GestureDetector(
            key: rightIconKey,
            onTap: () {
              if (onRightIconPressed != null) {
                onRightIconPressed!();
              }
            },
            child: Image.asset('assets/images/more.png', width: 25, height: 25),
          )
        else
          const SizedBox(width: 30, height: 30),
      ],
    );
  }
}
