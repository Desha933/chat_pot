import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:chat_pot/features/on_boarding/presentation/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpacing(79),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text('You AI Assistant', style: Styles.bold23Blue),
          ),
          verticalSpacing(14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 66),
            child: Text(
              'Using this software,you can ask you questions and receive articles using artificial intelligence assistant',
              style: Styles.meduim15Gray,
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpacing(75),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Image.asset('assets/images/on_boarding_image.png'),
          ),
          verticalSpacing(100),
          OnBoardingButton(),
        ],
      ),
    );
  }
}
