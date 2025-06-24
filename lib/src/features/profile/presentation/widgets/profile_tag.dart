import 'package:flutter/material.dart';

class ProfileTag extends StatefulWidget {
  const ProfileTag({super.key});

  @override
  State<ProfileTag> createState() => _ProfileTagState();
}

class _ProfileTagState extends State<ProfileTag> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "This is the Profile Tag widget. You can customize it as needed.",
    );
  }
}
