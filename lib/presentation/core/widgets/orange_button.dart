import '../size.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 30,
      ),
      child: SizedBox(
        width: getPercentSize(100, false, context),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            title!,
          ),
        ),
      ),
    );
  }
}
