import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';

// ignore: must_be_immutable
class GridrectangleItemWidget extends StatelessWidget {
  GridrectangleItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle10130x1304,
      height: getSize(
        130,
      ),
      width: getSize(
        130,
      ),
    );
  }
}
