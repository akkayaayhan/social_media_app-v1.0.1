import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';

// ignore: must_be_immutable
class VideolibraryItemWidget extends StatelessWidget {
  VideolibraryItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            105,
          ),
          width: getHorizontalSize(
            190,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle17105x1901,
                height: getVerticalSize(
                  105,
                ),
                width: getHorizontalSize(
                  190,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 4,
                    right: 4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          14,
                        ),
                        width: getHorizontalSize(
                          33,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  14,
                                ),
                                width: getHorizontalSize(
                                  33,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.redA200,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: getHorizontalSize(
                            39,
                          ),
                          margin: getMargin(
                            top: 68,
                          ),
                          padding: getPadding(
                            left: 4,
                            top: 1,
                            right: 4,
                            bottom: 1,
                          ),
                          decoration: AppDecoration
                              .txtGradientBlack90066Black90066
                              .copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                          ),
                          child: Text(
                            "09:54",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyRegular12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 8,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroyMedium16Bluegray800,
          ),
        ),
      ],
    );
  }
}
