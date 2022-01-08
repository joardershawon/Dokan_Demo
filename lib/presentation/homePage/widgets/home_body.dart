import 'package:dokan_demo/presentation/core/widgets/orange_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
          SliverToBoxAdapter(
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: const Text('Product List'),
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
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
              height: getPercentSize(8, true, context),
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
          GestureDetector(
            //** BOTTOM SHEET */
            onTap: () => showMaterialModalBottomSheet(
              enableDrag: true,
              context: context,
              builder: (context) => const BottomSheet1(),
            ),
            child: SvgPicture.asset('assets/menu_icon.svg'),
          ),
          // const Spacer(flex: 2),
        ],
      ),
    );
  }
}

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8F8F8),
      height: getPercentSize(50, true, context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 20,
            child: SizedBox(
              width: 47,
              child: Divider(
                thickness: 3,
                height: 3,
                color: Color(0xffFFD3DD),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            bottom: 0,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CustomCheckBoxWithTextWidget(
                        title: 'Newest',
                        isSelected: true,
                        onTap: () {},
                      ),
                      CustomCheckBoxWithTextWidget(
                        title: 'Oldest',
                        isSelected: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                // const Spacer(),
                CustomCancelSaveButton(
                  buttonText1: 'Cancel',
                  buttonText2: 'Search',
                  onButton1Press: () {
                    Navigator.pop(context);
                  },
                  onButton2Press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCancelSaveButton extends StatelessWidget {
  const CustomCancelSaveButton({
    Key? key,
    required this.buttonText1,
    required this.buttonText2,
    required this.onButton1Press,
    required this.onButton2Press,
  }) : super(key: key);
  final String? buttonText1, buttonText2;
  final VoidCallback? onButton1Press, onButton2Press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: OrangeButton(
              key: UniqueKey(),
              title: buttonText1,
              color: Colors.white,
              textColor: const Color(0xff818995),
              onTap: () => onButton1Press!(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: OrangeButton(
              title: buttonText2,
              onTap: () => onButton2Press!(),
              color: Coolors.kBottomSheetButtonColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

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
