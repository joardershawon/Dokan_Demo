import '../../core/size.dart';
import '../../design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const itemWidth = 160.0;
    const itemHeight = 290.0;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: CustomScrollView(
        key: UniqueKey(),
        scrollDirection: Axis.vertical,
        slivers: [
          const SliverToBoxAdapter(
            child: FilterWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: getPercentSize(5, true, context),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: itemWidth / itemHeight,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const ProductCardWidget();
              },
              childCount: 6,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: getPercentSize(5, true, context),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff4D5877).withOpacity(.13),
            offset: const Offset(2, 3),
            blurRadius: 6,
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Coolors.kGradient1Color,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Coolors.kWhiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Text(
                    'Girls Stylish Dresses ',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.black,
                          // fontSize: 14,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(flex: 2),
                  Row(
                    children: [
                      Text(
                        '\$160',
                        style: GoogleFonts.lato().copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          letterSpacing: .14,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff989FA8),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '\$79.00',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset('assets/rating_icons.svg'),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 4,
            color: const Color(0xff395AB8).withOpacity(.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/settings_icon.svg'),
          const SizedBox(width: 10),
          const Text('Filter'),
          const Spacer(),
          SvgPicture.asset('assets/menu_icon.svg'),
          // const Spacer(flex: 2),
        ],
      ),
    );
  }
}
