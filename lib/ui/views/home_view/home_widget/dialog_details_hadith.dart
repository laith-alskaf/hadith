import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_task/core/enums/text_type.dart';
import 'package:pro_task/ui/shared/colors.dart';
import 'package:pro_task/ui/shared/custom_widget/custom_text.dart';
import 'package:pro_task/ui/shared/extenssions/extension_sizebox.dart';

showDialogDetailsHadith({required String title}) {
  return Get.dialog(
    Dialog(
      insetPadding: EdgeInsets.all(0.w.h),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: IntrinsicHeight(
        child: Container(
          constraints: BoxConstraints(minHeight: 190.h),
          width: 500.w,
          // height: 330.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35).r,
            color: AppColors.whiteColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 35.w,
                  ),
                  (25.w).pw,
                  CustomText(
                    text: title,
                    textType: TextStyleType.bodyBig,
                    textColor: AppColors.blackColor.withOpacity(0.6),
                    fontSize: 24.sp,
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        padding: EdgeInsets.all(2.w),
                        child: Image.asset(
                          'assets/images/ic_x.png',
                          width: 34.w,
                          color: AppColors.grayColor,
                        ),
                      ))
                ],
              ),
              (25.h).ph,
              const CustomText(
                text:
                    '''যে হাদীসের সানাদ অবিচ্ছিন্ন হয়, বর্ণনাকারীরা ন্যায়পরায়ণ ও পূর্ণ আয়ত্বশক্তির অধিকারী হন এবং সানাদটি শা'জ ও মু"আল্লাল না হয় সে হাদীসকে সহীহ বা সহীহ লিযাতিহী। গ্রহণযোগ্য হাদীসগুলোর মধ্যে সহীহ লিযাতিহী'র মর্যাদা সবচেয়ে বেশী।''',
                textType: TextStyleType.bodyBig,
                heightText: 1.7,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
        ),
      ),
    ),
    transitionDuration: const Duration(milliseconds: 300),
    transitionCurve: Curves.easeIn,
  );
}
