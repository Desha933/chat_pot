import 'package:chat_pot/core/utils/app_assets.dart';
import 'package:chat_pot/core/utils/app_colors.dart';
import 'package:chat_pot/core/utils/spacing.dart';
import 'package:chat_pot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,

        //textBaseline: TextBaseline.alphabetic,
        children: [
          isSender
              ? SizedBox.shrink()
              : Row(
                  children: [
                    horizontalSpacing(30),
                    Container(
                      width: 26.w,
                      height: 26.h,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 227, 223, 223),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        fit: BoxFit.contain,
                        width: 11.w,
                        height: 17.h,
                        AppAssets.robotLogo,
                      ),
                    ),
                    horizontalSpacing(7),
                  ],
                ),
          Container(
            width: 252.w,

            margin: EdgeInsets.only(
              top: 15,
              bottom: 15,
              right: 30,
              left: isSender ? 30 : 0,
            ),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            decoration: BoxDecoration(
              color: isSender ? AppColors.mainBlue : Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(25),
                topRight: const Radius.circular(25),
                bottomLeft: isSender ? const Radius.circular(25) : Radius.zero,
                bottomRight: isSender ? Radius.zero : const Radius.circular(25),
              ),
            ),
            child: Text(
              message,
              style: isSender
                  ? Styles.bold13Blue.copyWith(color: Colors.white)
                  : Styles.regular13Black,
            ),
          ),
        ],
      ),
    );
  }
}
