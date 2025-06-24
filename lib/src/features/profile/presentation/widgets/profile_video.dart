import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/profile/data/local/sample_list_video.dart';
import 'package:whattoeattoday/src/features/profile/presentation/widgets/card_profile_video_item.dart';

class ProfileVideo extends StatefulWidget {
  const ProfileVideo({super.key});

  @override
  State<ProfileVideo> createState() => _ProfileVideoState();
}

class _ProfileVideoState extends State<ProfileVideo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final video = sampleListProfileVideos[index];
              return CardProfileVideoItem(video: video);
            },
            itemCount: sampleListProfileVideos.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
