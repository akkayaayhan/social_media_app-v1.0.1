import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class AddfriendsItemWidget extends StatelessWidget {
  AddfriendsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgProfileimglarge100x100,
          height: getSize(
            100,
          ),
          width: getSize(
            100,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              50,
            ),
          ),
          margin: getMargin(
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold18,
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        132,
                      ),
                      text: "Add Firend",
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        132,
                      ),
                      text: "Remove",
                      margin: getMargin(
                        left: 16,
                      ),
                      variant: ButtonVariant.FillBluegray100,
                      fontStyle: ButtonFontStyle.GilroyMedium14Bluegray40001,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
