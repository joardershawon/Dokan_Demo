import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dokan_demo/application/auth/signup/signup_bloc.dart';
import 'package:dokan_demo/presentation/core/widgets/custom_snack_bar.dart';
import 'package:dokan_demo/presentation/design/coolors.dart';
import 'package:dokan_demo/presentation/router/router.gr.dart';

import '../../core/size.dart';
import '../../core/widgets/custom_forgot_password.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_title_widget.dart';
import '../../core/widgets/footer_text_widget.dart';
import '../../core/widgets/orange_button.dart';
import '../../core/widgets/social_row_widget.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state.showError!) {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('Credential Error'),
          );
        }
        state.authFailureOrSuccess!.fold(
          () => null,
          (a) => a.fold(
            (l) => ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(l.errorText ?? 'gg'),
            ),
            (r) {
              return context.router.replaceAll(
                [
                  const HomeRouter(),
                ],
              );
              // replaceAll(
              //   [
              //     const LoginPageRouter(),
              //   ],
              // )
            },
          ),
        );
      },
      builder: (context, state) {
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
                    key: UniqueKey(),
                    hintText: 'Email',
                    prefixIcon: SvgPicture.asset('assets/email_icon.svg'),
                    suffixIcon: const SizedBox.shrink(),
                    textEditingController: emailController,
                    onChange: (String v) {
                      // BlocProvider.of<SignupBloc>(context).add(SignupEvent.emailChanged(email: v));
                    },
                  ),
                  CustomTextFormField(
                    key: UniqueKey(),
                    obscureText: true,
                    hintText: 'Password',
                    prefixIcon: SvgPicture.asset('assets/password_icon.svg'),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    onChange: (String v) {
                      // BlocProvider.of<SignupBloc>(context).add(SignupEvent.passwordChanged(password: v));
                    },
                    textEditingController: passwordController,
                  ),
                  const ForgotPasswordWidget(),
                  SizedBox(height: getPercentSize(8, false, context)),
                  state.isLoading!
                      ? Center(child: CircularProgressIndicator(key: UniqueKey(), color: Coolors.kOrangeColor))
                      : OrangeButton(
                          key: UniqueKey(),
                          title: 'Login',
                          onTap: () {
                            //**!.................... LOGIN ....................*/
                            BlocProvider.of<SignupBloc>(context).add(
                              SignupEvent.loginWithCredentials(
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                          },
                        ),
                  // SizedBox(height: getPercentSize(5, true, context)),
                  const SocialRowWidget(),
                  FooterText(
                    text1: 'Create New Account',
                    onTap: () {
                      context.router.replaceAll(
                        [
                          const SignUpPageRouter(),
                        ],
                      );
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
      },
    );
  }
}
