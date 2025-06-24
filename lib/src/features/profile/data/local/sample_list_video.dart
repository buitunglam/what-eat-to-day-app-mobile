import 'package:whattoeattoday/src/features/profile/domain/models/profile_video_model.dart';

final List<ProfileVideoModel> sampleListProfileVideos = [
  ProfileVideoModel(
    id: '1',
    title: 'Cooking Pasta',
    description: 'Learn how to cook pasta in this video.',
    thumbnailUrl: 'https://www.example.com/thumbnail1.jpg',
    videoUrl: 'https://www.example.com/video1.mp4',
    like: 100,
    comment: 10,
    view: 1000,
    userId: 'user1',
    date: '2023-01-01',
    videoDuration: '5:00', // Example duration
  ),
  ProfileVideoModel(
    id: '2',
    title: 'Making Sushi',
    description: 'A step-by-step guide to making sushi.',
    thumbnailUrl: 'https://www.example.com/thumbnail2.jpg',
    videoUrl: 'https://www.example.com/video2.mp4',
    like: 200,
    comment: 20,
    view: 2000,
    userId: 'user2',
    date: '2023-01-02',
    videoDuration: '6:30', // Example duration
  ),
  ProfileVideoModel(
    id: '3',
    title: 'Baking Bread',
    description: 'A comprehensive guide to baking bread at home.',
    thumbnailUrl: 'https://www.example.com/thumbnail3.jpg',
    videoUrl: 'https://www.example.com/video3.mp4',
    like: 300,
    comment: 30,
    view: 3000,
    userId: 'user3',
    date: '2023-01-03',
    videoDuration: '7:15', // Example duration
  ),
  ProfileVideoModel(
    id: '4',
    title: 'Grilling Steak',
    description: 'Perfect your steak grilling skills with this video.',
    thumbnailUrl: 'https://www.example.com/thumbnail4.jpg',
    videoUrl: 'https://www.example.com/video4.mp4',
    like: 400,
    comment: 40,
    view: 4000,
    userId: 'user4',
    date: '2023-01-04',
    videoDuration: '8:45', // Example duration
  ),
  // Add more video samples as needed
];
