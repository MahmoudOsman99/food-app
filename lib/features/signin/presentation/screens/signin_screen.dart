import 'package:flutter/material.dart';
import 'package:food_app/config/app_colors.dart';
import 'package:food_app/config/extensions/app_extensions.dart';
import 'package:food_app/config/strings.dart';
import 'package:food_app/core/shared_widgets/default_button.dart';
import 'package:food_app/core/shared_widgets/default_text_form_field.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isSavePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: context.height * 0.1,
            start: 24,
            end: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   AppStrings().signinText,
              //   style: context.textList.headlineLarge!.copyWith(
              //     fontWeight: FontWeight.bold,
              //     color: AppColors.blackTextColor,
              //   ),
              // ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
                width: context.width,
                height: context.height / 3,
              ),
              Text(
                AppStrings().signinSubText,
                textAlign: TextAlign.center,
                style: context.textList.bodyMedium!.copyWith(
                  // fontWeight: FontWeight.bold,
                  color: AppColors.blackTextColor,
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              SizedBox(
                width: context.width,
                height: context.height / 4,
                child: DecoratedBox(
                  decoration:
                      const BoxDecoration(color: AppColors.lightOrangeColor),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings().phoneNumberText,
                          style: context.textList.displayMedium!.copyWith(
                            color: AppColors.blackTextColor,
                          ),
                        ),
                        DefaultTextFormField(
                          controller: emailController,
                          buttonInputStyle: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        Text(
                          AppStrings().passwordText,
                          style: context.textList.displayMedium!.copyWith(
                            color: AppColors.blackTextColor,
                          ),
                        ),
                        DefaultTextFormField(
                          controller: passwordController,
                          isPassword: true,
                          buttonInputStyle: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // check box item
                  InkWell(
                    onTap: () => setState(() {
                      isSavePassword = !isSavePassword;
                    }),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.orangeColor,
                          value: isSavePassword,
                          onChanged: (value) => {
                            setState(() => isSavePassword = value!),
                          },
                        ),
                        Text(
                          'Save Password',
                          style: context.textList.bodyMedium!.copyWith(
                            color: isSavePassword
                                ? AppColors.orangeColor
                                : AppColors.blackTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Forgot password section
                  TextButton(
                    child: Text(
                      AppStrings().forgotPasswordText,
                      style: context.textList.bodyMedium!.copyWith(
                        color: AppColors.lighRedColor,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              // Spacer(),
              SizedBox(
                height: context.height * 0.1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DefualtButton(
                    text: AppStrings().signinText,
                    onPressed: () {},
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
