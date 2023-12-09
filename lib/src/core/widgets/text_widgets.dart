import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';

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


class TextSpanUnderline extends StatelessWidget {
  const TextSpanUnderline({
    Key? key,
    this.text = "",
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
  }) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap here
      },
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: AppColors.primaryFifthText,
            decoration: TextDecoration.underline,
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontFamily: 'OpenSans',
          ),
          text: text,
        ),
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
      maxLines: 3,
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

class TextSpanFade extends StatelessWidget {
  const TextSpanFade({
    super.key,
    this.text = "",
    this.color = AppColors.primaryFifthText,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
              overflow: TextOverflow.fade,
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: 'OpenSans')),
    );
  }
}

class EllipsisText extends StatelessWidget {
  const EllipsisText({
    super.key,
    this.text = "",
    this.color = AppColors.primaryFifthText,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.start,
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
      maxLines: 3,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: 'OpenSans'),
    );
  }
}

class TextEllipsisFade extends StatelessWidget {
  const TextEllipsisFade({
    super.key,
    this.text = "",
    this.color = AppColors.primaryFifthText,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: 'OpenSans')),
    );
  }
}

class ClipText extends StatelessWidget {
  const ClipText({
    super.key,
    this.text = "",
    this.color = AppColors.primaryFifthText,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.start,
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
      maxLines: 3,
      textAlign: textAlign,
      overflow: TextOverflow.clip,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: 'OpenSans'),
    );
  }
}
