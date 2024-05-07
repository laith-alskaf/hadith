import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexagon/hexagon.dart';
import 'package:pro_task/core/enums/text_type.dart';
import 'package:pro_task/ui/shared/colors.dart';
import 'package:pro_task/ui/shared/custom_widget/custom_text.dart';
import 'package:pro_task/ui/shared/extenssions/extension_sizebox.dart';
import 'package:pro_task/ui/views/home_view/home_widget/custom_container.dart';
import 'package:pro_task/ui/views/home_view/home_widget/dialog_details_hadith.dart';

class ContainerHadith extends StatelessWidget {
  const ContainerHadith({
    super.key,
    required this.typeBook,
    required this.titleBook,
    required this.hadithAr,
    required this.hadithBn,
    required this.narrator,
    this.paddingBottom,
    required this.grade,
    required this.hadithId,
  });

  final String typeBook;
  final String titleBook;
  final String hadithAr;
  final String hadithBn;
  final String narrator;
  final String grade;
  final int hadithId;
  final double? paddingBottom;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      paddingEnd: 20.w,
      paddingStart: 20.w,
      paddingBottom: paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              HexagonWidget.pointy(
                cornerRadius: 15.r,
                width: 70.w,
                color: AppColors.secondColorMain,
                padding: 4.0,
                child: Center(
                  child: CustomText(
                    text: typeBook,
                    textType: TextStyleType.bodyBig,
                    textColor: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              (10.w).pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: titleBook,
                    textType: TextStyleType.body,
                    textColor: AppColors.blackColor.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                  (10.h).ph,
                  CustomText(
                    text: "হাদিস: $hadithId",
                    textType: TextStyleType.body,
                    textColor: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showDialogDetailsHadith(title: grade);
                },
                child: Container(
                  width: 100.w,
                  height: 30.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      color: AppColors.mainColor.withOpacity(0.7)),
                  child: CustomText(
                    textType: TextStyleType.small,
                    textDecoration: TextDecoration.none,
                    fontSize: 16.sp,
                    text: grade,
                    textColor: AppColors.whiteColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/ic_list.png',
                width: 40.w,
                color: AppColors.grayColor,
              )
            ],
          ),
          (20.h).ph,
          Directionality(
            textDirection: TextDirection.rtl,
            child: CustomText(
              fontFamily: 'KFGQ',
              text: hadithAr,
              textType: TextStyleType.subtitle,
              textColor: AppColors.blackColor,
              heightText: 2,
              letterSpacing: 0.45,
              fontWeight: FontWeight.normal,
            ),
          ),
          (30.h).ph,
          // TODO shure color text on this
          CustomText(
            text: "$narrator থেকে বর্ণিত:",
            textType: TextStyleType.bodyBig,
            textColor: AppColors.mainColor.withOpacity(0.9),
            fontWeight: FontWeight.normal,
          ),
          (15.h).ph,
          Directionality(
            textDirection: TextDirection.ltr,
            child: CustomText(
              text: hadithBn,
              textType: TextStyleType.bodyBig,
              textColor: AppColors.blackColor,
              heightText: 1.6,
              letterSpacing: 0.2,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
