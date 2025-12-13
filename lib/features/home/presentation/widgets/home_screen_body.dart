import 'package:chat_pot/core/utils/app_assets.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:chat_pot/features/home/presentation/widgets/background_container_text.dart';
import 'package:chat_pot/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:chat_pot/features/home/presentation/widgets/custom_text_form_field.dart';
import 'package:chat_pot/features/home/presentation/widgets/wellcom_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Divider(thickness: 1, color: Color(0XFFECECEC)),
        Expanded(child: SingleChildScrollView(child: WellcomMessage())),

        CustomTextFormField(),
        verticalSpacing(39),
      ],
    );
  }
}
