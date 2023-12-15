import '../share_screen/widgets/gridrectangleseventeen_item_widget.dart';
import '../share_screen/widgets/gridrectangleten_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/custom_checkbox.dart';

// ignore_for_file: must_be_immutable
class ShareScreen extends StatelessWidget {
  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 6, right: 16, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 3, bottom: 1),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                CustomCheckbox(
                                    width: getHorizontalSize(257),
                                    text: "4 Selected",
                                    value: isCheckbox,
                                    fontStyle:
                                        CheckboxFontStyle.GilroySemiBold24,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      isCheckbox = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Text("Recent",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getSize(130),
                                    width: getSize(130),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle10130x1301,
                                              height: getSize(130),
                                              width: getSize(130),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(130),
                                                  width: getSize(130),
                                                  padding: getPadding(all: 45),
                                                  decoration: AppDecoration
                                                      .fillBlack9004c,
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark40x40,
                                                        height: getSize(40),
                                                        width: getSize(40),
                                                        alignment:
                                                            Alignment.center)
                                                  ])))
                                        ])),
                                Container(
                                    height: getSize(130),
                                    width: getSize(130),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle11130x1301,
                                              height: getSize(130),
                                              width: getSize(130),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(130),
                                                  width: getSize(130),
                                                  padding: getPadding(all: 45),
                                                  decoration: AppDecoration
                                                      .fillBlack9004c,
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark40x40,
                                                        height: getSize(40),
                                                        width: getSize(40),
                                                        alignment:
                                                            Alignment.center)
                                                  ])))
                                        ])),
                                Container(
                                    height: getSize(130),
                                    width: getSize(130),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle12130x1301,
                                              height: getSize(130),
                                              width: getSize(130),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getSize(130),
                                                  width: getSize(130),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVideocamera,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin: getMargin(
                                                                left: 4)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: getSize(
                                                                    130),
                                                                width: getSize(
                                                                    130),
                                                                padding:
                                                                    getPadding(
                                                                        all:
                                                                            45),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack9004c,
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCheckmark40x40,
                                                                          height: getSize(
                                                                              40),
                                                                          width: getSize(
                                                                              40),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ])))
                                                      ])))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Last Week",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(131),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: getHorizontalSize(3),
                                      crossAxisSpacing: getHorizontalSize(3)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return GridrectangletenItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("July, 2022",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(131),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: getHorizontalSize(3),
                                      crossAxisSpacing: getHorizontalSize(3)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return GridrectangleseventeenItemWidget();
                              }))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
