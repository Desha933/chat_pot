import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: TextFormField(
        onSaved: (newValue) {},
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 22.w, top: 19.h, bottom: 19.h),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Hello chatGPT,how are you today?',
          hintStyle: Styles.bold13Blue,

          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),

          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Iconsax.microphone_2, color: Colors.blue),
              horizontalSpacing(7),
              Icon(Iconsax.send1, color: Colors.blue),
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
