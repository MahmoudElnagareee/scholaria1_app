import 'package:flutter/material.dart';
import 'package:scholaria1_app/core/utils/app_images.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/custom_button_app.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/header.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/social_buttons.dart';
import 'package:scholaria1_app/features/auth/presentation/views/widgets/tab_selector.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(),
          SizedBox(height: height * 0.03),
          const TabSelector(),
          SizedBox(height: height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButtons(assetPath: Assets.imagesGoogle, onTap: () {}),
              SocialButtons(assetPath: Assets.imagesFacebook, onTap: () {}),
              SocialButtons(assetPath: Assets.imagesApple, onTap: () {}),
              SocialButtons(assetPath: Assets.imagesLinkedin, onTap: () {}),
            ],
          ),
          SizedBox(height: height * 0.025),
          const OrDivider(),
          SizedBox(height: height * 0.02),
          CustomTextFormField(
            label: 'Email',
            hint: 'user@gmail.com',
            keyboardType: TextInputType.emailAddress,
            svgAsset: Assets.imagesUser,
            isPassword: false,
          ),
          SizedBox(height: height * 0.02),
          CustomTextFormField(
            label: 'Password',
            hint: 'Enter your password',
            keyboardType: TextInputType.visiblePassword,
            svgAsset: Assets.imagesEye,
            isPassword: true,
          ),
          SizedBox(height: height * 0.01),
          DontHaveAnAccountWidget(
            text1: 'Remember me',
            text2: '     Forgot Password ?',
          ),
          SizedBox(height: height * 0.02),
          CustomButtonApp(
            title: 'Log In',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
