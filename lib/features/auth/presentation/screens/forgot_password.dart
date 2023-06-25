import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_app/config/extensions/app_extensions.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/strings.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: context.height * 0.1,
            start: 20,
            end: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.forgotPasswordText,
                style: context.textList.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackTextColor,
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              Text(
                AppStrings.subForgotPasswordText,
                textAlign: TextAlign.center,
                style: context.textList.bodyMedium!.copyWith(
                  // fontWeight: FontWeight.bold,
                  color: AppColors.blackTextColor,
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              SizedBox(
                height: 50,
                child: OtpTextField(
                  textStyle: context.textList.displayMedium!.copyWith(
                    height: 0.5,
                    fontSize: 24,
                  ),
                  fieldWidth: 50,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  numberOfFields: 6,
                  enabledBorderColor: AppColors.borderOrangeColor,
                  borderColor: AppColors.orangeColor,
                  fillColor: AppColors.lightOrangeColor,
                  filled: true,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(AppStrings.verificationText),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
              ),

              /*
              handle it
              handle it
              */
              SizedBox(
                height: context.height * 0.02,
              ),
              InkWell(
                onTap: () {
                  print('Tapped on resend OTP');
                },
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    AppStrings.resendOTPText,
                    textAlign: TextAlign.center,
                    style: context.textList.bodyMedium!.copyWith(
                      // fontWeight: FontWeight.bold,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
