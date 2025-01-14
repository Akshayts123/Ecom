import 'controller/search_result_no_data_found_controller.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/widgets/app_bar/appbar_title_searchview.dart';
import 'package:ecom/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecom/widgets/app_bar/custom_app_bar.dart';
import 'package:ecom/widgets/custom_elevated_button.dart';
import 'package:ecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchResultNoDataFoundScreen
    extends GetWidget<SearchResultNoDataFoundController> {
  const SearchResultNoDataFoundScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            children: [
              Divider(),
              SizedBox(height: 15.v),
              _buildResultCounter(),
              Spacer(
                flex: 31,
              ),
              _buildNoData(),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              Spacer(
                flex: 68,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "lbl_search_product".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSort,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilter,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 32.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildResultCounter() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(
                "lbl_0_result".tr,
                style: CustomTextStyles.labelLargeOnPrimary,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_man_shoes".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDownIcon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNoData() {
    return Column(
      children: [
        CustomIconButton(
          height: 72.adaptSize,
          width: 72.adaptSize,
          padding: EdgeInsets.all(28.h),
          decoration: IconButtonStyleHelper.outlinePrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseOnprimarycontainer,
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          "msg_product_not_found".tr,
          style: CustomTextStyles.headlineSmallOnPrimary,
        ),
        SizedBox(height: 11.v),
        Text(
          "msg_thank_you_for_shopping".tr,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
