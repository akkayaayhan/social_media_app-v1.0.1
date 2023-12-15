import '../hashtag_screen/widgets/hashtag_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';
import 'package:social_media_app/widgets/custom_button.dart';

class HashtagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 15),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "#nature"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu24x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 15))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfileimglarge72x721,
                                    height: getSize(72),
                                    width: getSize(72),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(36))),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .fromHex(
                                                                "#ff262b35"),
                                                        fontSize:
                                                            getFontSize(18),
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w600)),
                                                TextSpan(
                                                    text: "",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .fromHex(
                                                                "#ff74839d"),
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              textAlign: TextAlign.left),
                                          CustomButton(
                                              height: getVerticalSize(34),
                                              text: "Follow",
                                              margin: getMargin(top: 10))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(52),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 24),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 73,
                                        top: 15,
                                        right: 73,
                                        bottom: 15),
                                    decoration:
                                        AppDecoration.outlineBluegray100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Recent",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium16Bluegray400)
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 76),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Top",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium16BlueA700),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: SizedBox(
                                                  width: getHorizontalSize(47),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .blueA700)))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(131),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: getHorizontalSize(3),
                                      crossAxisSpacing: getHorizontalSize(3)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return HashtagItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
