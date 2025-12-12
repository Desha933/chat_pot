import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle bold23Blue = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlue,
  );
  static TextStyle meduim15Gray = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.gray,
  );
  static TextStyle bold19White = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
  );
}
