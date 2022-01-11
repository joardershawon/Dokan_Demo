import '../../core/widgets/custom_network_image.dart';
import '../../design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.regularPrice,
    required this.imgUrl,
  }) : super(key: key);
  final String? title, price, regularPrice, imgUrl;

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
            child: CustomNetworkImage(
              key: UniqueKey(),
              imageUrl: imgUrl,
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
                    title!,
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
                        '\$ $regularPrice',
                        style: GoogleFonts.lato().copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          letterSpacing: .14,
                          decoration: TextDecoration.lineThrough,
                          color: const Color(0xff989FA8),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '\$ $price',
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
