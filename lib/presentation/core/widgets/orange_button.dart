import '../../design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.color = Coolors.kOrangeColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String? title;
  final VoidCallback? onTap;
  final Color? color, textColor;

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
          style: ElevatedButton.styleFrom(
            primary: color!,
            padding: const EdgeInsets.all(20),
            textStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: textColor!,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
