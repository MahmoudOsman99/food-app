import 'package:flutter/material.dart';
import 'package:food_app/config/app_colors.dart';
import 'package:food_app/config/extensions/app_extensions.dart';
import 'package:food_app/config/strings.dart';

class DefualtButton extends StatelessWidget {
  String text;
  VoidCallback? onPressed;
  DefualtButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // style: ButtonStyle(
      //   backgroundColor: MaterialStateProperty.resolveWith((states) {
      //     // If the button is pressed, return green, otherwise blue
      //     if (states.contains(MaterialState.pressed)) {
      //       return Colors.green;
      //     }
      //     return AppColors.orangeColor;
      //   }),
      //   textStyle: MaterialStateProperty.resolveWith(
      //     (states) {
      //       // If the button is pressed, return size 40, otherwise 20
      //       if (states.contains(MaterialState.pressed)) {
      //         return context.textList.labelLarge!.copyWith(
      //           fontSize: 30,
      //           color: AppColors.whiteColor,
      //         );
      //       }
      //       return context.textList.labelLarge!.copyWith(
      //         color: AppColors.whiteColor,
      //       );
      //     },
      //   ),
      // ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => AppColors.orangeColor,
        ),
        minimumSize: MaterialStateProperty.resolveWith((states) {
          return Size(
            context.width * 0.65,
            50,
          );
        }),
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
      onPressed: onPressed,
      child: Text(
        AppStrings().signinText,
        style: context.textList.labelLarge!.copyWith(
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
