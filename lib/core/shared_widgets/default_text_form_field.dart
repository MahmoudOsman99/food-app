import 'package:flutter/material.dart';
import 'package:food_app/config/app_colors.dart';
import 'package:food_app/config/extensions/app_extensions.dart';

class DefaultTextFormField extends StatelessWidget {
  TextEditingController controller;
  final bool? isPassword;
  final TextInputAction? buttonInputStyle;
  final TextInputType? keyboardType;
  DefaultTextFormField({
    super.key,
    required this.controller,
    this.isPassword,
    this.buttonInputStyle,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ?? false,
      style: context.textList.bodySmall!.copyWith(
        color: context.isDarkMode
            ? AppColors.blackTextColor
            : AppColors.whiteColor,
      ),
      textInputAction: buttonInputStyle,
      keyboardType: keyboardType,
    );
  }
}
