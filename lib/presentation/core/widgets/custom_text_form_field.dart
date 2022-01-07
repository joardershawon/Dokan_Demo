import '../../design/coolors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.prefixIcon,
    this.suffixIcon = const SizedBox.shrink(),
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
        elevation: 2,
        shadowColor: Coolors.kShadowColor,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(
            cursorColor: Coolors.kOrangeColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: const BoxConstraints(
                maxHeight: 22,
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
