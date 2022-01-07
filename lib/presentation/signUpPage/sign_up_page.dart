import '../homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/widgets/social_row_widget.dart';

import '../core/size.dart';
import '../core/widgets/custom_text_form_field.dart';
import '../core/widgets/footer_text_widget.dart';
import '../core/widgets/orange_button.dart';
import '../design/coolors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const SignUpBody(),
    );
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ),
              CustomTextFormField(
                hintText: 'Email',
                prefixIcon: SvgPicture.asset('assets/email_icon.svg'),
              ),
              CustomTextFormField(
                hintText: 'Password',
                prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
              ),
              CustomTextFormField(
                hintText: 'Confirm Password',
                prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
              ),
              SizedBox(height: getPercentSize(10, true, context)),
              OrangeButton(
                title: 'Sign Up',
                onTap: () {
                  //TODO: SIGN UP

                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(
                  //     builder: (context) => const HomePage(),
                  //   ),
                  //   (route) => false,
                  // );
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

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Material(
              color: Colors.white,
              elevation: 2,
              shape: const CircleBorder(),
              child: SizedBox(
                height: 121,
                width: 121,
                child: Padding(
                  padding: const EdgeInsets.all(45),
                  child: SvgPicture.asset(
                    'assets/person_icon.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      Coolors.kGradient2Color,
                      Coolors.kGradient1Color,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 14),
                      blurRadius: 23,
                      color: Coolors.kShadowColor,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/camera_icon.svg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
