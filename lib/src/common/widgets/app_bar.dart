import 'package:flutter/material.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';
import 'package:keshoohin_flutter_app/src/common/widgets/text_widgets.dart';

AppBar appBar(BuildContext context, String text) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      icon:
          const Icon(Icons.arrow_back, color: AppColors.primarySecondElement),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.05),
        height: 1,
      ),
    ),
    title: Text16Normal(text: text, color: AppColors.primaryText),
  );
}
