import 'package:flutter/material.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';

Widget appCircularProgressIndicator() {
  return const SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: CircularProgressIndicator(
                        backgroundColor: AppColors.primaryBackground,
                        color: AppColors.primaryElement,
                      ),
                    ),
                  );
}