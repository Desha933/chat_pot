import 'package:chat_pot/core/utils/app_assets.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:chat_pot/features/home/presentation/widgets/background_container_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class WellcomMessage extends StatelessWidget {
  const WellcomMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Column(
        children: [
          verticalSpacing(20),
          Image.asset(AppAssets.menu, height: 28.h, width: 28.w),
          verticalSpacing(5),
          Text('Explain', style: Styles.bold14Black),
          verticalSpacing(18),
          BackgroundContainerText(
            widget: Text(
              'Explain Quantum physics',
              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(8),
          BackgroundContainerText(
            widget: Text(
              'What are wormholes explain like i am 5',

              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(37),
          Icon(Iconsax.edit_2, size: 24.w),
          verticalSpacing(5),
          Text('Write & edit', style: Styles.bold14Black),
          verticalSpacing(18),
          BackgroundContainerText(
            widget: Text(
              'Write a tweet about global warming',

              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(8),
          BackgroundContainerText(
            widget: Text(
              'Write a poem about flower and love',

              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(8),
          BackgroundContainerText(
            widget: Text(
              'Write a rap song lyrics about',

              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(37),
          Icon(Iconsax.translate, size: 24.w),
          verticalSpacing(5),
          Text('Translate', style: Styles.bold14Black),
          verticalSpacing(18),
          BackgroundContainerText(
            widget: Text(
              'How do you say “how are you” in korean?',

              style: Styles.medium14Black,
            ),
          ),
          verticalSpacing(8),
          BackgroundContainerText(
            widget: Text(
              'Write a poem about flower and love',

              style: Styles.medium14Black,
            ),
          ),
        ],
      ),
    );
  }
}
