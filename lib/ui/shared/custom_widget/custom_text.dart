import 'package:flutter/material.dart';
import 'package:pro_task/core/enums/text_type.dart';
import 'package:pro_task/core/utils/general_util.dart';
import 'package:pro_task/ui/shared/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.isDecoration = false,
      this.isTextAlign,
      this.heightText,
      this.bottomPadding,
      this.startPadding,
      this.endPadding,
      this.topPadding,
      this.isTextDirection,
      required this.textType,
      this.textDecoration,
      this.maxLines,
      this.overflow,
      this.decorationColor,
      this.wordSpacing,
      this.letterSpacing,
      this.fontFamily});

  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? textColor;
  final Color? decorationColor;
  final double? wordSpacing;
  final double? letterSpacing;
  final bool isDecoration;
  final TextAlign? isTextAlign;
  final FontWeight? fontWeight;
  final TextStyleType textType;
  final double? heightText;
  final TextOverflow? overflow;
  final double? bottomPadding;
  final int? maxLines;
  final double? startPadding;
  final double? endPadding;
  final double? topPadding;
  final TextDirection? isTextDirection;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isTextAlign,
      overflow: overflow ?? TextOverflow.visible,
      softWrap: true,
      style: getTextStyle(),
    );
  }

  TextStyle getTextStyle() {
    switch (textType) {
      case TextStyleType.title:
        return TextStyle(
          fontFamily: fontFamily ?? 'Kalpurush',
          height: heightText ?? 1.2,
          overflow: overflow,
          decoration: textDecoration,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          decorationColor: decorationColor ?? textColor,
          color: textColor ?? AppColors.textColor,
          fontSize: fontSize ?? sizeTextTitle,
          fontWeight: fontWeight,
        );

      case TextStyleType.subtitle:
        return TextStyle(
          fontFamily: fontFamily ?? 'Kalpurush',
          height: heightText ?? 1.2,
          wordSpacing: wordSpacing,
          overflow: overflow,
          letterSpacing: letterSpacing,
          decoration: textDecoration,
          decorationColor: decorationColor ?? textColor,
          color: textColor ?? AppColors.textColor,
          fontSize: fontSize ?? sizeTextSupHeader,
          fontWeight: fontWeight,
        );

      case TextStyleType.bodyBig:
        return TextStyle(
          fontFamily: fontFamily ?? 'Kalpurush',
          height: heightText ?? 1.2,
          decoration: textDecoration,
          wordSpacing: wordSpacing,
          color: textColor ?? AppColors.textColor,
          fontSize: fontSize ?? sizeTextBodyBig,
          overflow: overflow,
          decorationColor: decorationColor ?? textColor,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight ?? FontWeight.bold,
        );

      case TextStyleType.body:
        return TextStyle(
            fontFamily: fontFamily ?? 'Kalpurush',
            height: heightText ?? 1,
            decoration: textDecoration,
            color: textColor ?? AppColors.textColor,
            wordSpacing: wordSpacing,
            fontSize: fontSize ?? sizeTextBody,
            decorationColor: decorationColor ?? textColor,
            overflow: overflow,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight ?? FontWeight.bold);

      case TextStyleType.small:
        return TextStyle(
          fontFamily: fontFamily ?? 'Kalpurush',
          height: heightText ?? 1,
          letterSpacing: letterSpacing,
          decoration: textDecoration,
          wordSpacing: wordSpacing,
          overflow: overflow,
          decorationColor: decorationColor ?? textColor,
          color: textColor ?? AppColors.textColor,
          fontSize: fontSize ?? defaultSizeSmall,
          fontWeight: fontWeight,
        );

      case TextStyleType.custom:
        return TextStyle(
          fontFamily: fontFamily ?? 'Kalpurush',
          letterSpacing: letterSpacing,
          height: heightText ?? 1.2,
          decoration: textDecoration,
          wordSpacing: wordSpacing,
          decorationColor: decorationColor ?? textColor,
          color: textColor ?? AppColors.textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );
    }
  }
}
