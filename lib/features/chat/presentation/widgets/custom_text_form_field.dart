import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.onSubmit,
    this.onSend,
  });
  final TextEditingController? controller;
  final Function(String)? onSubmit;
  final Function(String)? onSend;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: TextFormField(
        onFieldSubmitted: onSubmit,
        style: Styles.bold13Blue,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 22.w, top: 19.h, bottom: 19.h),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Write your message',
          hintStyle: Styles.bold13Blue.copyWith(color: Color(0XFFA1A1A1)),

          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),

          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Iconsax.microphone_2, color: AppColors.lightGray),
              horizontalSpacing(7),
              IconButton(
                onPressed: () => onSend!(controller!.text),

                icon: Icon(Iconsax.send1),
                color: AppColors.mainBlue,
              ),
              horizontalSpacing(16),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide: BorderSide.none,
    );
  }
}
