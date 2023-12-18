import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/core/utils/utils_export.dart';
import 'package:keshoohin_flutter_app/src/core/widgets/text_widgets.dart';

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


class MyAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const MyAppBar({required this.isCanPop, super.key});
  final bool isCanPop;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}

class _MyAppBarState extends ConsumerState<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.isCanPop
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.chevron_left),
            )
          : GestureDetector(
              child: const Icon(Icons.menu),
            ),
      automaticallyImplyLeading: false,
      actions: [
        const AppSearchBar(),
        SizedBox(width: 20.w),
        GestureDetector(
          child: const Icon(Icons.send_rounded),
        ),
        SizedBox(width: 20.w),
        GestureDetector(
          child: const Icon(Icons.production_quantity_limits),
        ),
        SizedBox(width: 20.w),
      ],
    );
  }
}
