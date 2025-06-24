import 'package:flutter/material.dart';
import 'package:whattoeattoday/src/features/recipe_detail/data/data_sources/local/list_data.dart';
import 'package:whattoeattoday/src/features/recipe_detail/domain/models/content_popover_recipe_detail_model.dart';

class ContentPopoverRecipeDetail extends StatefulWidget {
  final Function onClickToShare;
  final Function onClickToRate;
  final Function onClickToReview;
  final Function onClickToSave;
  const ContentPopoverRecipeDetail({
    super.key,
    required this.onClickToShare,
    required this.onClickToRate,
    required this.onClickToReview,
    required this.onClickToSave,
  });

  @override
  State<ContentPopoverRecipeDetail> createState() =>
      _ContentPopoverRecipeDetailState();
}

class _ContentPopoverRecipeDetailState
    extends State<ContentPopoverRecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children:
          listContentPopoverRecipeDetail.map((item) {
            return ListTile(
              leading: Image.asset(item.imageIconUrl, width: 24, height: 24),
              title: Text(item.title),
              onTap: () {
                print("Clicked on ${item.type}");
                switch (item.type) {
                  
                  case PopoverType.share:
                    widget.onClickToShare();
                    break;
                  case PopoverType.rate:
                    widget.onClickToRate();
                    break;
                  case PopoverType.review:
                    widget.onClickToReview();
                    break;
                  default:
                    widget.onClickToSave();
                    break;
                }
              },
            );
          }).toList(),
    );
  }
}
