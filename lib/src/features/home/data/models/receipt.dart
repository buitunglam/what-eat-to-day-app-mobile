
class Receipt {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String time;
  final bool favorite;
  final String star;

  Receipt({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.time,
    required this.favorite,
    required this.star,
  });
}