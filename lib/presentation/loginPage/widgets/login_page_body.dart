import '../../core/widgets/social_button_widget.dart';
import '../../core/widgets/social_row_widget.dart';

import '../../core/size.dart';
import '../../core/widgets/custom_forgot_password.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_title_widget.dart';
import '../../core/widgets/footer_text_widget.dart';
import '../../core/widgets/orange_button.dart';
import '../../signUpPage/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: getPercentSize(10, false, context)),
              SvgPicture.asset('assets/dokan_logo.svg'),
              SizedBox(height: getPercentSize(15, true, context)),
              const CustomTitleWidget(),
              SizedBox(height: getPercentSize(1, true, context)),
              CustomTextFormField(
                hintText: 'Email',
                prefixIcon: SvgPicture.asset('assets/email_icon.svg'),
                suffixIcon: const SizedBox.shrink(),
              ),
              CustomTextFormField(
                hintText: 'Password',
                prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_sharp,
                ),
              ),
              const ForgotPasswordWidget(),
              SizedBox(height: getPercentSize(8, false, context)),
              OrangeButton(
                title: 'Login',
                //TODO: Login
                onTap: () {
                  print('LOGIN PRESSED');
                },
              ),
              // SizedBox(height: getPercentSize(5, true, context)),
              const SocialRowWidget(),
              FooterText(
                text1: 'Create New Account',
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const SignUpPage(),
                  //   ),
                  // );
                },
              ),
              // FooterText(
              //   text: GestureDetector(
              //     onTap: () => Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => const SignUpPage(),
              //       ),
              //     ),
              //     child: Text(
              //       'Create New Account',
              //       style: Theme.of(context).textTheme.headline3,
              //       textAlign: TextAlign.center,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
