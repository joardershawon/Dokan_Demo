import '../../design/coolors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.text1,
    this.text2 = '',
    required this.onTap,
  }) : super(key: key);
  final String? text1, text2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Text.rich(
        TextSpan(
          text: text1,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
          recognizer: TapGestureRecognizer()..onTap = () => onTap!(),
          children: [
            TextSpan(
              text: text2,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Coolors.kBlueColor,
                    fontWeight: FontWeight.w700,
                  ),
              recognizer: TapGestureRecognizer()..onTap = () => onTap!(),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
