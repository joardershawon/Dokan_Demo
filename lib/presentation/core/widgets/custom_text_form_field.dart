import '../../design/coolors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.prefixIcon,
    this.suffixIcon = const SizedBox.shrink(),
    this.hintText,
    required this.onChange,
    required this.textEditingController,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;
  final Function(String v)? onChange;
  final TextEditingController? textEditingController;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

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
            key: UniqueKey(),
            enableSuggestions: false,
            keyboardType: textInputType,
            textInputAction: textInputAction,
            obscureText: obscureText!,
            controller: textEditingController,
            // onChanged: obscureText! ? null : (value) => onChange!(value),
            // onFieldSubmitted: obscureText! ? (value) => onChange!(value) : null,
            cursorColor: Coolors.kOrangeColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIconConstraints: const BoxConstraints(
                maxHeight: 22,
                minWidth: 50,
                maxWidth: 50,
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
