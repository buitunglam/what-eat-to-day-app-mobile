class RecipeDetail {
  final String id;
  final String name;
  final String description;
  final List<String> imageGaleryUrls;
  final List<String> ingredients;
  final List<String> steps;
  final String authorName;
  final String authorImageUrl;
  final String authorAddress;
  final String authorId;
  final String totalReviews;
  final String time;
  final String rating;
  final String recipeLink;

  RecipeDetail({
    required this.id,
    required this.name,
    required this.description,
    required this.imageGaleryUrls,
    required this.ingredients,
    required this.steps,
    required this.authorName,
    required this.authorImageUrl,
    required this.authorAddress,
    required this.authorId,
    required this.totalReviews,
    required this.time,
    required this.rating,
    required this.recipeLink,
  });

  factory RecipeDetail.fromJson(Map<String, dynamic> json) {
    return RecipeDetail(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageGaleryUrls:  List<String>.from(json['imageGaleryUrls'] as List),
      ingredients: List<String>.from(json['ingredients'] as List),
      steps: List<String>.from(json['steps'] as List),
      authorName: json['authorName'] as String,
      authorImageUrl: json['authorImageUrl'] as String,
      authorAddress: json['authorAddress'] as String,
      authorId: json['authorId'] as String,
      totalReviews: json['totalReviews'] as String,
      time: json['time'] as String,
      rating: json['rating'] as String,
      recipeLink: json['recipeLink'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageGaleryUrls': imageGaleryUrls,
      'ingredients': ingredients,
      'steps': steps,
      'authorName': authorName,
      'authorImageUrl': authorImageUrl,
      'authorAddress': authorAddress,
      'authorId': authorId,
      'totalReviews': totalReviews,
      'time': time,
      'rating': rating,
      'recipeLink': recipeLink,
    };
  }
}