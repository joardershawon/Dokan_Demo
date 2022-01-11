import '../../design/coolors.dart';
import 'package:flutter/material.dart';

class CustomCheckBoxWithTextWidget extends StatelessWidget {
  const CustomCheckBoxWithTextWidget({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);
  final String? title;
  final bool? isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () => onTap!(),
        child: Row(
          children: [
            Icon(
              isSelected! ? Icons.check_box : Icons.check_box_outline_blank,
              color: Coolors.kCheckBoxColor,
            ),
            const SizedBox(width: 10),
            Text(
              title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
