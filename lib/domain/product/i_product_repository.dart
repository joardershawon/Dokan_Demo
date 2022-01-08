import 'package:dokan_demo/infrastructure/product/product_dto.dart';

abstract class IProductRepository {
  Future<List<Product>> getAllProduct();
}

enum ProductFilter {
  old,
  neew,
  ascendingPrice,
}
