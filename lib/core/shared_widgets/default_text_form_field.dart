import 'package:flutter/material.dart';
import 'package:food_app/config/app_colors.dart';
import 'package:food_app/config/extensions/app_extensions.dart';

class DefaultTextFormField extends StatelessWidget {
  TextEditingController controller;
  final String? lable;
  final bool? isPassword;
  final double? height;
  final TextInputAction? buttonInputStyle;
  final TextInputType? keyboardType;
  final Icon? suffixIcon;
  DefaultTextFormField({
    super.key,
    required this.controller,
    this.lable,
    this.height,
    this.isPassword,
    this.buttonInputStyle,
    this.keyboardType,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable ?? "",
          style: context.textList.displayMedium!
              .copyWith(color: AppColors.blackTextColor, fontSize: 16),
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextFormField(
            controller: controller,
            obscureText: isPassword ?? false,
            style: context.textList.bodySmall!.copyWith(
                color: context.isDarkMode
                    ? AppColors.blackTextColor
                    : AppColors.whiteColor),
            textInputAction: buttonInputStyle,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
            ),
          ),
        ),
        SizedBox(
          height: height ?? context.height * 0.02,
        ),
      ],
    );
  }
}
