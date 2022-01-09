import 'package:auto_route/auto_route.dart';
import 'package:dokan_demo/presentation/core/size.dart';
import 'package:dokan_demo/presentation/core/widgets/custom_text_form_field.dart';
import 'package:dokan_demo/presentation/core/widgets/footer_text_widget.dart';
import 'package:dokan_demo/presentation/core/widgets/orange_button.dart';
import 'package:dokan_demo/presentation/core/widgets/social_row_widget.dart';
import 'package:dokan_demo/presentation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../sign_up_page.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getPercentSize(5, true, context)),
              const ProfileImageWidget(),
              SizedBox(height: getPercentSize(5, true, context)),
              CustomTextFormField(
                hintText: 'Name',
                prefixIcon: SvgPicture.asset('assets/person_icon.svg'),
                onChange: (String v) {
                  print(v);
                },
                textEditingController: nameController,
              ),
              CustomTextFormField(
                hintText: 'Email',
                prefixIcon: SvgPicture.asset('assets/email_icon.svg'),
                onChange: (String v) {},
                textEditingController: emailController,
              ),
              CustomTextFormField(
                obscureText: true,
                hintText: 'Password',
                prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
                onChange: (String v) {},
                textEditingController: passwordController,
              ),
              CustomTextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                hintText: 'Confirm Password',
                prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
                onChange: (String v) {},
                textEditingController: confirmPasswordController,
              ),
              SizedBox(height: getPercentSize(5, true, context)),
              //TODO: SIGN UP
              OrangeButton(
                title: 'Sign Up',
                onTap: () {
                  context.router.replaceAll(
                    [
                      const LoginPageRouter(),
                    ],
                  );
                },
              ),
              const SocialRowWidget(),
              FooterText(
                text1: 'Already have an account?',
                text2: '  Login',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
