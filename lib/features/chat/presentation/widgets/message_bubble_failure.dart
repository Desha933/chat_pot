import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubbleFailure extends StatelessWidget {
  final String message;
  final VoidCallback onTap;

  const MessageBubbleFailure({
    super.key,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    Icons.refresh,
                    color: AppColors.gray,
                    size: 24.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Tap to retry',
                  style: Styles.regular13Black.copyWith(
                    color: AppColors.gray,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            SizedBox(width: 8.w),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffFF2D1B),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(25),
                  topRight: const Radius.circular(25),
                  bottomLeft: const Radius.circular(25),
                  bottomRight: Radius.zero,
                ),
              ),
              child: Text(
                message,
                style: Styles.regular13Black.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
