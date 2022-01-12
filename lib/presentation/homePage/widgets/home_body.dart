import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/product/product_bloc.dart';
import '../../core/size.dart';
import 'filter_widget.dart';
import 'product_card_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  // @override
  // void didUpdateWidget(covariant HomeBody oldWidget) {
  //   setState(() {});
  //   super.didUpdateWidget(oldWidget);
  // }

  @override
  Widget build(BuildContext context) {
    const itemWidth = 160.0;
    const itemHeight = 290.0;
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: CustomScrollView(
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
              SliverToBoxAdapter(
                key: UniqueKey(),
                child: const FilterWidget(),
              ),
              SliverToBoxAdapter(
                key: UniqueKey(),
                child: SizedBox(
                  height: getPercentSize(5, true, context),
                ),
              ),
              state.products!.isEmpty
                  ? SliverToBoxAdapter(
                      key: UniqueKey(),
                      child: const SizedBox(
                        child: Text(
                          'Nothing Found',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: itemWidth / itemHeight,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ProductCardWidget(
                            key: UniqueKey(),
                            title: state.products![index].name,
                            price: state.products![index].price.toString(),
                            regularPrice: state.products![index].regularPrice.toString(),
                            imgUrl: state.products![index].images!.first.src,
                          );
                        },
                        childCount: state.products!.length,
                      ),
                    ),
              SliverToBoxAdapter(
                key: UniqueKey(),
                child: SizedBox(
                  height: getPercentSize(8, true, context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
