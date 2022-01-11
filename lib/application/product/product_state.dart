part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool? isLoading,
    required ProductFilter? productFilter,
    required List<Product>? products,
  }) = _ProductState;
  factory ProductState.initial() => const ProductState(
        productFilter: null,
        products: [],
        isLoading: false,
      );
}
