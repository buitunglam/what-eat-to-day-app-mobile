class ProfileVideoModel {
  final String id;
  final String title;
  final String description;
  final String thumbnailUrl;
  final String videoUrl;
  final int like;
  final int comment;
  final int view;
  final String? userId;
  final String date;
  final String videoDuration;

  ProfileVideoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.like,
    required this.comment,
    required this.view,
    required this.userId,
    required this.date,
    required this.videoDuration,
  });
}
