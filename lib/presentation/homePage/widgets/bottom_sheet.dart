import '../../../application/product/product_bloc.dart';
import '../../../domain/product/i_product_repository.dart';
import '../../core/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_cancel_save_button.dart';
import 'custom_check_box.dart';
import 'home_body.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
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
                        children: List.generate(
                          ProductFilter.values.length,
                          (index) {
                            return CustomCheckBoxWithTextWidget(
                              key: UniqueKey(),
                              title: ProductFilter.values[index].name,
                              isSelected: state.productFilter == ProductFilter.values[index],
                              onTap: () => BlocProvider.of<ProductBloc>(context).add(
                                ProductEvent.filterPressed(productFilter: ProductFilter.values[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // const Spacer(),
                    CustomCancelSaveButton(
                      key: UniqueKey(),
                      buttonText1: 'Cancel',
                      buttonText2: 'Search',
                      onButton1Press: () {
                        Navigator.pop(context);
                      },
                      onButton2Press: () {
                        BlocProvider.of<ProductBloc>(context).add(
                          const ProductEvent.submitPressed(),
                        );
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
