import 'package:dokan_demo/presentation/core/size.dart';
import 'package:dokan_demo/presentation/design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({
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
              SizedBox(height: getPercentSize(25, false, context)),
              const CustomTitleWidget(),
              SizedBox(height: getPercentSize(5, false, context)),
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
              SizedBox(height: getPercentSize(10, false, context)),
              const LoginButton(),
              SizedBox(height: getPercentSize(5, false, context)),
              const SocialSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialSection extends StatelessWidget {
  const SocialSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButtonWidget(
                icon: SvgPicture.asset('assets/facebook_icon.svg'),
              ),
              SocialButtonWidget(
                icon: Image.asset('assets/google.png'),
              ),
            ],
          ),
        ),
        SizedBox(height: getPercentSize(10, false, context)),
        Text(
          'Create New Account',
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getPercentSize(5, false, context)),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'Login',
      ),
    );
  }
}

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password?',
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.end,
    );
  }
}

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign In',
      style: Theme.of(context).textTheme.headline1,
      textAlign: TextAlign.center,
    );
  }
}

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 56,
        width: 56,
        child: Material(
          elevation: 5,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: icon,
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.prefixIcon,
    required this.suffixIcon,
    this.hintText,
  }) : super(key: key);
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Material(
        color: Coolors.kWhiteColor,
        shadowColor: Coolors.kBgColor,
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(
            cursorColor: Coolors.kOrangeColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: const BoxConstraints(
                minWidth: 50,
              ),
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
