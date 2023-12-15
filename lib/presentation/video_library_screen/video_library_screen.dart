import '../video_library_screen/widgets/videolibrary_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';
import 'package:social_media_app/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class VideoLibraryScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Video library"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 23, right: 16, bottom: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("Videos",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold18Black900)),
                            CustomDropDown(
                                width: getHorizontalSize(85),
                                focusNode: FocusNode(),
                                icon: Container(
                                    margin: getMargin(left: 8),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowdownBlueA700)),
                                hintText: "Sort By",
                                items: dropdownItemList,
                                onChanged: (value) {})
                          ]),
                      Padding(
                          padding: getPadding(top: 18),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(133),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(16),
                                      crossAxisSpacing: getHorizontalSize(16)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return VideolibraryItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
