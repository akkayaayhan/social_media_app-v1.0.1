import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';

// ignore: must_be_immutable
class ListvideocameraItemWidget extends StatelessWidget {
  ListvideocameraItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            56,
          ),
          width: getSize(
            56,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProfileimglarge11,
                height: getSize(
                  56,
                ),
                width: getSize(
                  56,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    28,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.blueA200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Container(
                    height: getSize(
                      16,
                    ),
                    width: getSize(
                      16,
                    ),
                    padding: getPadding(
                      left: 3,
                      top: 5,
                      right: 3,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillBlueA200.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder8,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVideocamera,
                          height: getVerticalSize(
                            6,
                          ),
                          width: getHorizontalSize(
                            10,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: getHorizontalSize(
            215,
          ),
          margin: getMargin(
            left: 16,
            top: 4,
            bottom: 5,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff262b35"),
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff262b35"),
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: " ",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff262b35"),
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff262b35"),
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff74839d"),
                    fontSize: getFontSize(
                      18,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    color: ColorConstant.fromHex("#ff74839d"),
                    fontSize: getFontSize(
                      16,
                    ),
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgUser,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            top: 16,
            bottom: 16,
          ),
        ),
      ],
    );
  }
}
