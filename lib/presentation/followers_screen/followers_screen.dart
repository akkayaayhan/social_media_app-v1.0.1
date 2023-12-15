import '../followers_screen/widgets/followers_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';

class FollowersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft9(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Name"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgShare,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 10, right: 16, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 11),
                          padding: getPadding(
                              left: 60, top: 12, right: 60, bottom: 12),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1, bottom: 5),
                                    child: Text("Followers",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16BlueA700)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 1),
                                    child: Text("Following",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray400))
                              ])),
                      SizedBox(
                          width: getHorizontalSize(139),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.blueA700,
                              indent: getHorizontalSize(51))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(17));
                              },
                              itemCount: 11,
                              itemBuilder: (context, index) {
                                return FollowersItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}
