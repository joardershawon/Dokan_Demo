import 'package:dokan_demo/presentation/design/coolors.dart';
import '../../core/size.dart';
import '../../design/custom_paint_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBNBar extends StatelessWidget {
  const CustomBNBar({
    Key? key,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
    required this.onTap4,
    required this.currentIndex,
  }) : super(key: key);
  final VoidCallback? onTap1, onTap2, onTap3, onTap4;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    final size = Size(
      getPercentSize(100, false, context),
      getPercentSize(100, true, context),
    );
    return SizedBox(
      width: size.width,
      height: 60,
      child: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          CustomPaint(
            size: Size(size.width, 60),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: Colors.orange,
              child: const Icon(Icons.shopping_basket),
              elevation: 0.1,
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => onTap1!(),
                  child: SvgPicture.asset(
                    'assets/bottom_nav_1.svg',
                    color: currentIndex == 0 ? Coolors.kCheckBoxColor : Coolors.kBottomMenuIconColor,
                  ),
                ),
                GestureDetector(
                  onTap: () => onTap2!(),
                  child: SvgPicture.asset(
                    'assets/bottom_nav_2.svg',
                    color: currentIndex == 1 ? Coolors.kCheckBoxColor : Coolors.kBottomMenuIconColor,
                  ),
                ),
                Container(
                  width: size.width * 0.20,
                ),
                GestureDetector(
                  onTap: () => onTap3!(),
                  child: SvgPicture.asset(
                    'assets/bottom_nav_3.svg',
                    color: currentIndex == 2 ? Coolors.kCheckBoxColor : Coolors.kBottomMenuIconColor,
                  ),
                ),
                GestureDetector(
                  onTap: () => onTap4!(),
                  child: SvgPicture.asset(
                    'assets/bottom_nav_4.svg',
                    color: currentIndex == 3 ? Coolors.kCheckBoxColor : Coolors.kBottomMenuIconColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
