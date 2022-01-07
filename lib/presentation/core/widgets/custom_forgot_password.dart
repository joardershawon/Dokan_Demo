import 'package:flutter/material.dart';

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
