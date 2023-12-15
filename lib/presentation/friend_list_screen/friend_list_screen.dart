import '../friend_list_screen/widgets/friendlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';

class FriendListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Friend List"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 12))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 42, top: 12, right: 42, bottom: 12),
                          decoration: AppDecoration.outlineBluegray100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 12, bottom: 5),
                                    child: Text("All Friends",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16BlueA700)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("Recently Added",
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
                              indent: getHorizontalSize(44))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(17));
                              },
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return FriendlistItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
