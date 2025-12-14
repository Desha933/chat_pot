import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundContainerText extends StatelessWidget {
  const BackgroundContainerText({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: AppColors.containerBackGroundGray,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Align(alignment: AlignmentGeometry.center, child: widget),
    );
  }
}
