import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_color.dart';

enum FontFamilyType {
  exo,
}

extension FontFamilyExtension on FontFamilyType {
  String? name() {
    switch (this) {
      case FontFamilyType.exo:
        return "Exo2";
    }
  }
}

enum FontWeightType {
  regular,
  medium,
  semiBold,
  bold
}

extension FontWeightTypeExtension on FontWeightType {
  FontWeight type() {
    switch (this) {
      case FontWeightType.regular:
        return FontWeight.w400;
      case FontWeightType.medium:
        return FontWeight.w500;
      case FontWeightType.semiBold:
        return FontWeight.w600;
      case FontWeightType.bold:
        return FontWeight.w700;
    }
  }
}

class AppText extends StatelessWidget {
  final TextStyle? textStyle;
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool scalable;
  final String? configKey;

  const AppText._(this.text,
      {Key? key,
        this.textStyle,
        this.textAlign,
        this.overflow,
        this.maxLines,
        this.configKey,
        this.scalable = true
      })
      : super(key: key);

  factory AppText.primary(String text, {
    Color? color = AppColor.black,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 15.0,
    FontFamilyType? fontFamily = FontFamilyType.exo,
    TextDecoration decoration = TextDecoration.none
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name(),
          decoration: decoration
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.body(String text, {
    Color? color = AppColor.textLightBlack,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 16.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.itemTitleSmall(String text, {
    Color? color = AppColor.black,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 16.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.itemTitleLarge(String text, {
    Color? color = AppColor.black,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 18.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.primaryButtonText(String text, {
    Color? color = AppColor.textLightBlack,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 14.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.regular(String text, {
    Color? color = AppColor.textLightBlack,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 14.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.currency(String text, {
    Color? color = AppColor.active,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 16.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.small(String text, {
    Color? color = AppColor.textLightBlack,
    FontWeightType? fontWeight = FontWeightType.regular,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 12.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.h6(String text, {
    Color? color = AppColor.textLightBlack,
    FontWeightType? fontWeight = FontWeightType.medium,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 28.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.h4(String text, {
    Color? color = AppColor.black,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 20.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  factory AppText.h3(String text, {
    Color? color = AppColor.black,
    FontWeightType? fontWeight = FontWeightType.semiBold,
    bool scalable = true,
    String? configKey,
    TextAlign? textAlign,
    int? maxLines,
    double? fontSize = 24.0,
    FontFamilyType? fontFamily = FontFamilyType.exo
  }) {
    return AppText._(
      text,
      textStyle: TextStyle(
          fontWeight: fontWeight?.type(),
          color: color,
          fontSize: fontSize?.sp,
          fontFamily: fontFamily?.name()
      ),
      scalable: scalable,
      configKey: configKey,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      textScaleFactor: scalable ? null : 1.0,
    );
  }
}