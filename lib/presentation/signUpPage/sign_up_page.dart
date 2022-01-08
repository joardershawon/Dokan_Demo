import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../design/coolors.dart';
import 'widgets/sign_up_body.dart';

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
