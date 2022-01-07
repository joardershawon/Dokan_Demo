import 'package:auto_route/auto_route.dart';
import '../../core/size.dart';
import '../../design/custom_paint_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBNBar extends StatelessWidget {
  const CustomBNBar({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);
  final TabsRouter? tabsRouter;

  @override
  Widget build(BuildContext context) {
    final size = Size(getPercentSize(100, false, context), getPercentSize(100, true, context));
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
                  onTap: () => tabsRouter!.setActiveIndex(0),
                  child: SvgPicture.asset('assets/bottom_nav_1.svg'),
                ),
                GestureDetector(
                  onTap: () => tabsRouter!.setActiveIndex(1),
                  child: SvgPicture.asset('assets/bottom_nav_2.svg'),
                ),
                Container(
                  width: size.width * 0.20,
                ),
                GestureDetector(
                  onTap: () => tabsRouter!.setActiveIndex(2),
                  child: SvgPicture.asset('assets/bottom_nav_3.svg'),
                ),
                GestureDetector(
                  onTap: () => tabsRouter!.setActiveIndex(3),
                  child: SvgPicture.asset('assets/bottom_nav_4.svg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
