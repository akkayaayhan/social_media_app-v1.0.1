import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';

// ignore: must_be_immutable
class GridrectangleseventeenItemWidget extends StatelessWidget {
  GridrectangleseventeenItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle16130x1301,
      height: getSize(
        130,
      ),
      width: getSize(
        130,
      ),
    );
  }
}
