import 'controller/notification_offer_controller.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecom/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOfferScreen extends GetWidget<NotificationOfferController> {
  const NotificationOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  _buildOfferItemRow(
                      offerTitle: "lbl_the_best_title".tr,
                      offerDescription: "msg_culpa_cillum_consectetur".tr,
                      offerTime: "msg_april_30_2014_1_01".tr),
                  _buildOfferItemRow(
                      offerTitle: "msg_summer_offer_98".tr,
                      offerDescription: "msg_culpa_cillum_consectetur".tr,
                      offerTime: "msg_april_30_2014_1_01".tr),
                  SizedBox(height: 5.v),
                  _buildOfferItemRow(
                      offerTitle: "msg_special_offer_25".tr,
                      offerDescription: "msg_culpa_cillum_consectetur".tr,
                      offerTime: "msg_april_30_2014_1_01".tr)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_notification".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildOfferItemRow({
    required String offerTitle,
    required String offerDescription,
    required String offerTime,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgOffer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 94.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(offerTitle,
                                style: theme.textTheme.titleSmall!.copyWith(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(1))),
                            SizedBox(height: 10.v),
                            SizedBox(
                                width: 305.h,
                                child: Text(offerDescription,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                        color: appTheme.blueGray300,
                                        height: 1.80))),
                            SizedBox(height: 9.v),
                            Text(offerTime,
                                style: CustomTextStyles.bodySmallOnPrimary10
                                    .copyWith(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1)))
                          ])))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
