import 'package:flutter/material.dart';
import 'package:food_app/config/extensions/app_extensions.dart';
import 'package:food_app/core/router_settings/routes.dart';
import 'package:food_app/core/shared_widgets/default_button.dart';
import 'package:food_app/core/shared_widgets/default_text_form_field.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/strings.dart';

class CreateNewAccount extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.height,
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
                    AppStrings.createNewAccountText,
                    style: context.textList.headlineLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Text(
                    AppStrings.subCreateNewAccountText,
                    textAlign: TextAlign.center,
                    style: context.textList.bodyMedium!.copyWith(
                      // fontWeight: FontWeight.bold,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Form(
                    child: SizedBox(
                      width: double.infinity,
                      height: context.height * 0.48,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.lightOrangeColor,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                DefaultTextFormField(
                                  controller: nameController,
                                  lable: AppStrings.nameText,
                                  buttonInputStyle: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                ),
                                DefaultTextFormField(
                                  controller: emailController,
                                  lable: AppStrings.emailText,
                                  buttonInputStyle: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                ),
                                DefaultTextFormField(
                                  controller: passwordController,
                                  lable: AppStrings.passwordText,
                                  buttonInputStyle: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  suffixIcon: Icon(Icons.visibility),
                                  isPassword: true,
                                ),
                                DefaultTextFormField(
                                  controller: confirmPasswordController,
                                  lable: AppStrings.confirmPasswordText,
                                  buttonInputStyle: TextInputAction.done,
                                  keyboardType: TextInputType.text,
                                  suffixIcon: Icon(Icons.visibility),
                                  isPassword: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  DefualtButton(
                    text: AppStrings.signUpText,
                    onPressed: () {
                      print(this.emailController.text);
                    },
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.alreadyHaveAccountText,
                      ),
                      SizedBox(
                        width: context.width * 0.02,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                          context,
                          AppRoutes.signinRoute,
                        ),
                        child: Text(
                          AppStrings.signinText,
                          style: context.textList.bodyMedium!.copyWith(
                            color: AppColors.orangeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
