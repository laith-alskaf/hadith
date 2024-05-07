import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_task/core/enums/text_type.dart';
import 'package:pro_task/ui/shared/colors.dart';
import 'package:pro_task/ui/shared/custom_widget/custom_text.dart';
import 'package:pro_task/ui/shared/extenssions/extension_sizebox.dart';
import 'package:pro_task/ui/views/home_view/home_view_controller.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.homeViewController,
  });

  final HomeViewController homeViewController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      padding: EdgeInsetsDirectional.only(
        start: 20.w,
        top: 50.h,
      ),
      height: 1.sh,
      width: 1.sw,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 30.w,
                color: AppColors.whiteColor,
              ),
              (25.w).pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    textType: TextStyleType.bodyBig,
                    text: homeViewController.bookItems[0].title!,
                    textColor: AppColors.whiteColor,
                  ),
                  (8.h).ph,
                  CustomText(
                    textType: TextStyleType.small,
                    text: homeViewController.itemsChapter[0].title!,
                    textColor: AppColors.whiteColor.withOpacity(0.9),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.settings,
                size: 30.w,
                color: AppColors.whiteColor,
              ),
              (25.w).pw,
            ],
          ),
        ],
      ),
    );
  }
}
