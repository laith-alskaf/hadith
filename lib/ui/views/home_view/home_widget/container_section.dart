import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_task/core/enums/text_type.dart';
import 'package:pro_task/ui/shared/colors.dart';
import 'package:pro_task/ui/shared/custom_widget/custom_text.dart';
import 'package:pro_task/ui/views/home_view/home_view_controller.dart';
import 'package:pro_task/ui/views/home_view/home_widget/custom_container.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({
    super.key,
    required this.index,
    required this.homeViewController,
  });

  final int index;
  final HomeViewController homeViewController;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      paddingEnd: 20.w,
      paddingStart: 20.w,
      paddingBottom: 10.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    style: TextStyle(
                        fontFamily: 'Kalpurush',
                        color: AppColors.mainColor.withOpacity(0.8),
                        fontSize: 23.sp,
                        fontWeight: FontWeight.bold),
                    text: "${homeViewController.itemsSection[index].number!} "),
                if(index==0)
                TextSpan(
                    style: TextStyle(
                        height: 1.5,
                        fontFamily: 'Kalpurush',
                        color: AppColors.blackColor.withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                        fontSize: 23.sp),
                    text: homeViewController.itemsSection[index].title!),
              ])),
            ],
          ),
          if (homeViewController.itemsSection[index].preface!.isNotEmpty) ...[
            Divider(
              thickness: 0.2,
              height: 30.h,
            ),
            CustomText(
              text: homeViewController.itemsSection[index].preface!,
              textType: TextStyleType.body,
              textColor: AppColors.blackColor.withOpacity(0.6),
              fontWeight: FontWeight.normal,
              letterSpacing: 0.2,
              heightText: 1.5,
            )
          ]
        ],
      ),
    );
  }
}
