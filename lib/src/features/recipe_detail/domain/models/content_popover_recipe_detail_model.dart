class ContentPopoverRecipeDetailModel {
  final PopoverType type;
  final String title;
  final String imageIconUrl;

  ContentPopoverRecipeDetailModel({
    required this.title,
    required this.type,
    required this.imageIconUrl,
  });
}

enum PopoverType { share, rate, review, save }
