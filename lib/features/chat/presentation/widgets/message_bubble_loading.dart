import 'package:chat_pot/core/utils/app_assets.dart';
import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubbleLoading extends StatelessWidget {
  const MessageBubbleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              horizontalSpacing(30),
              Container(
                width: 26.w,
                height: 26.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 227, 223, 223),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  AppAssets.robotLogo,
                  fit: BoxFit.contain,
                  width: 11.w,
                  height: 17.h,
                ),
              ),
              horizontalSpacing(7),
            ],
          ),
          Container(
            width: 100.w,
            height: 54.h,
            margin: const EdgeInsets.only(top: 15, bottom: 15, right: 30),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(25),
              ),
            ),
            child: const _LoadingDots(),
          ),
        ],
      ),
    );
  }
}

class _LoadingDots extends StatefulWidget {
  const _LoadingDots();

  @override
  State<_LoadingDots> createState() => _LoadingDotsState();
}

class _LoadingDotsState extends State<_LoadingDots>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      3,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      ),
    );

    _animations = _controllers.map((controller) {
      return Tween<double>(
        begin: 0.3,
        end: 1.0,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    }).toList();

    _startAnimation();
  }

  void _startAnimation() async {
    for (int i = 0; i < 3; i++) {
      // Determine mount state before continuing
      if (!mounted) return;
      _controllers[i].repeat(reverse: true);
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: AnimatedBuilder(
            animation: _animations[index],
            builder: (context, child) {
              return Opacity(
                opacity: _animations[index].value,
                child: Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const BoxDecoration(
                    color: AppColors.mainBlue,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
