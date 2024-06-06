import 'controller/notification_controller.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecom/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

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
                  _buildNotificationOptionRow(
                      listIcon: ImageConstant.imgOffer,
                      feedLabel: "lbl_offer".tr,
                      onTapNotificationOptionRow: () {
                        onTapNotificationOption();
                      }),
                  _buildNotificationOptionRow(
                      listIcon: ImageConstant.imgListIcon,
                      feedLabel: "lbl_feed".tr),
                  SizedBox(height: 5.v),
                  _buildNotificationOptionRow(
                      listIcon: ImageConstant.imgNotificationIconPrimary,
                      feedLabel: "lbl_acivity".tr,
                      onTapNotificationOptionRow: () {
                        onTapNotificationOption1();
                      })
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
  Widget _buildNotificationOptionRow({
    required String listIcon,
    required String feedLabel,
    Function? onTapNotificationOptionRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapNotificationOptionRow!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: listIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                  child: Text(feedLabel,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the notificationOfferScreen when the action is triggered.
  onTapNotificationOption() {
    Get.toNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  /// Navigates to the notificationActivityScreen when the action is triggered.
  onTapNotificationOption1() {
    Get.toNamed(
      AppRoutes.notificationActivityScreen,
    );
  }
}
