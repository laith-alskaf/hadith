import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_task/ui/shared/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
    this.paddingTop,
    this.paddingStart,
    this.paddingEnd,
    this.paddingBottom,
    this.paddingContent,
  });

  final Widget? child;
  final Color? backgroundColor;
  final double? width;
  final EdgeInsetsDirectional? paddingContent;
  final double? paddingTop;
  final double? paddingStart;
  final double? paddingEnd;
  final double? paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          top: paddingTop ??0 ,
          end: paddingBottom??0,
          start: paddingStart??0,
          bottom: paddingEnd??0),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
