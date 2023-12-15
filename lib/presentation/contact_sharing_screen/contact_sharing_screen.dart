import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/widgets/app_bar/appbar_image.dart';
import 'package:social_media_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_media_app/widgets/app_bar/custom_app_bar.dart';
import 'package:social_media_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ContactSharingScreen extends StatelessWidget {
  TextEditingController emailOneController = TextEditingController();

  TextEditingController group3670Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 11),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Contact Details"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgShare,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 11))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 14, right: 16, bottom: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse5150x150,
                              height: getSize(150),
                              width: getSize(150),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(75)),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("Michelle Rock",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroySemiBold18))),
                          Padding(
                              padding: getPadding(top: 76),
                              child: Text("Mobile Number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          Padding(
                              padding: getPadding(top: 13),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("(808) 555-0111",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCall,
                                    height: getSize(24),
                                    width: getSize(24)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(left: 16))
                              ])),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blueGray100)),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailOneController,
                              hintText: "Michellerock@gmail.com",
                              margin: getMargin(top: 16),
                              variant:
                                  TextFormFieldVariant.UnderLineBluegray100,
                              fontStyle: TextFormFieldFontStyle
                                  .GilroyMedium16Bluegray900,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("Ringtone",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyRegular16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group3670Controller,
                              hintText: "Default Ringtone",
                              margin: getMargin(top: 14, bottom: 5),
                              variant:
                                  TextFormFieldVariant.UnderLineBluegray100,
                              fontStyle: TextFormFieldFontStyle
                                  .GilroyMedium16Bluegray900,
                              textInputAction: TextInputAction.done)
                        ])))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
