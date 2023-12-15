import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';
import 'package:social_media_app/widgets/custom_icon_button.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(42),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, bottom: 5),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Settings"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: getMargin(left: 16, right: 16, bottom: 5))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 31, right: 16, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(150),
                          width: getSize(150),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse5150x150,
                                height: getSize(150),
                                width: getSize(150),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(75)),
                                alignment: Alignment.center),
                            CustomIconButton(
                                height: 30,
                                width: 30,
                                margin: getMargin(top: 5, right: 2),
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgForward))
                          ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("ayhan akkaya",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold18)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("ayhanakkayameb@gmail.com",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("Notifications",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8, top: 3),
                                    child: Text("Language",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMoonoutline,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("Dark mode",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 2),
                                    child: Text("General settings",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgDashboard,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("Theme",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgQuestion,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 2),
                                    child: Text("Help and feedback",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold18)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ]))
                    ]))));
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
