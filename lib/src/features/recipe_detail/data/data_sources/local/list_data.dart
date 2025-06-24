import 'package:whattoeattoday/src/features/recipe_detail/domain/models/content_popover_recipe_detail_model.dart';

final listContentPopoverRecipeDetail = [
  ContentPopoverRecipeDetailModel(
    title: "Share",
    type: PopoverType.share,
    imageIconUrl: "assets/images/share.png",
  ),
  ContentPopoverRecipeDetailModel(
    title: "Rate recipe",
    type: PopoverType.rate,
    imageIconUrl: "assets/images/start_full.png",
  ),
  ContentPopoverRecipeDetailModel(
    title: "Review",
    type: PopoverType.review,
    imageIconUrl: "assets/images/message.png",
  ),
  ContentPopoverRecipeDetailModel(
    title: "Unsave",
    type: PopoverType.save,
    imageIconUrl: "assets/images/save.png",
  ),
];
