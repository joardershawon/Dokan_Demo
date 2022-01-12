import '../../../application/product/product_bloc.dart';
import '../../../domain/product/i_product_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'bottom_sheet.dart';

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
          GestureDetector(
            onTap: () async => await showMaterialModalBottomSheet<void>(
              enableDrag: true,
              context: context,
              builder: (_) => const BottomSheet1(),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/settings_icon.svg'),
                const SizedBox(width: 5),
                const Text('Filter'),
              ],
            ),
          ),
          const SizedBox(width: 10),

          const Spacer(flex: 10),

          PopupMenuButton(
              initialValue: 2,
              child: SvgPicture.asset('assets/sort.svg'),
              itemBuilder: (context) {
                return List.generate(
                  ProductFilter.values.length,
                  (index) => PopupMenuItem(
                    // onTap: () => BlocProvider.of<ProductBloc>(context).add(
                    //   ProductEvent.filterPressed(
                    //     productFilter: ProductFilter.values[index],
                    //   ),
                    // ),
                    child: Text(
                      ProductFilter.values[index].name.toString(),
                    ),
                  ),
                );
              }),
          const Spacer(),
          //** BOTTOM SHEET */

          SvgPicture.asset('assets/menu_icon.svg'),

          // const Spacer(flex: 2),
        ],
      ),
    );
  }
}
