import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'social_button_widget.dart';

class SocialRowWidget extends StatelessWidget {
  const SocialRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
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
    );
  }
}
