import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';

class Text10Normal extends StatelessWidget {
  const Text10Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primaryText,
      this.fontWeight = FontWeight.normal});
  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 10.sp,
          fontWeight: fontWeight),
    );
  }
}

class Text11Normal extends StatelessWidget {
  const Text11Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primaryText,
      this.fontWeight = FontWeight.normal});
  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 11.sp,
          fontWeight: fontWeight),
    );
  }
}

class Text12Normal extends StatelessWidget {
  const Text12Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primaryText,
      this.fontWeight = FontWeight.normal});
  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 12.sp,
          fontWeight: fontWeight),
    );
  }
}

class Text14Normal extends StatelessWidget {
  const Text14Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primaryThirdElementText,
      this.fontWeight = FontWeight.normal});
  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 14.sp,
          fontWeight: fontWeight),
    );
  }
}

class Text16Normal extends StatelessWidget {
  const Text16Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primarySecondaryElementText,
      this.fontWeight = FontWeight.normal});
  final String text;
  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 16.sp,
          fontWeight: fontWeight),
    );
  }
}

class Text20Normal extends StatelessWidget {
  const Text20Normal(
      {super.key,
      this.text = "",
      this.color = AppColors.primaryThirdElementText,
      this.fontWeight = FontWeight.bold});
  final String text;
  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: color,
          fontFamily: 'OpenSans',
          fontSize: 20.sp,
          fontWeight: fontWeight),
    );
  }
}

class TextUnderline extends StatelessWidget {
  const TextUnderline(
      {super.key,
      this.text = "",
      this.fontWeight = FontWeight.bold,
      this.fontSize = 12});
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
            color: AppColors.primaryText,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryText,
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontFamily: 'OpenSans'),
      ),
    );
  }
}

class FadeText extends StatelessWidget {
  const FadeText({
    super.key,
    this.text = "",
    this.color = AppColors.primaryFifthText,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.left,
  });
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: false,
      maxLines: 2,
      textAlign: textAlign,
      overflow: TextOverflow.fade,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: 'OpenSans'),
    );
  }
}
