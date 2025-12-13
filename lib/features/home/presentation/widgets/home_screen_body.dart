import 'package:chat_pot/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Divider(thickness: 1, color: Color(0XFFECECEC)),
      ],
    );
  }
}
