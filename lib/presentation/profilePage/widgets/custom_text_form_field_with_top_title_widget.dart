import '../../core/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWithTopTitleWidget extends StatelessWidget {
  const CustomTextFormFieldWithTopTitleWidget({
    Key? key,
    required this.title,
    required this.hintText,
    this.widthPercent = 100,
    required this.onChange,
    required this.textEditingController,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  final String? title, hintText;
  final double? widthPercent;
  final Function(String v)? onChange;
  final TextEditingController? textEditingController;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 16,
                  color: const Color(0xff263238),
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: getPercentSize(widthPercent!, false, context),
            child: TextFormField(
              enableSuggestions: false,
              keyboardType: textInputType,
              textInputAction: textInputAction,
              obscureText: obscureText!,
              controller: textEditingController,
              onFieldSubmitted: (value) => onChange!(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
