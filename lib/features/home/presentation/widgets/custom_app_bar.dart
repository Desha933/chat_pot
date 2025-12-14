import 'package:chat_pot/core/utils/app_assets.dart';
import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        horizontalSpacing(20),
        IconButton(
          icon: Icon(Iconsax.arrow_left, size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        horizontalSpacing(12),
        Image.asset(AppAssets.robotLogo, height: 36, width: 24),
        horizontalSpacing(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ChatGPT', style: Styles.bold20Blue),

            Row(
              children: [
                Container(
                  width: 6.w,
                  height: 6.w,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(' Online', style: Styles.medium17Green),
              ],
            ),
          ],
        ),
        Spacer(),

        Icon(Iconsax.volume_high, size: 24.w, color: Colors.black),
        horizontalSpacing(19),
        Icon(Iconsax.export, size: 24.w, color: AppColors.lightGray),
        horizontalSpacing(29),
      ],
    );
  }
}
