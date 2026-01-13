import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:chat_pot/features/chat/presentation/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, ChatScreen.route()),
      child: Container(
        width: 333.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: AppColors.mainBlue,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Continue', style: Styles.bold19White),
            horizontalSpacing(95),
            Icon(Icons.arrow_forward, color: AppColors.white),
            horizontalSpacing(15),
          ],
        ),
      ),
    );
  }
}
