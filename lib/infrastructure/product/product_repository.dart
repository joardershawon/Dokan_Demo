import 'dart:convert';

import 'package:dokan_demo/domain/product/i_product_repository.dart';
import 'package:dokan_demo/infrastructure/product/product_dto.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  @override
  Future<List<Product>> getAllProduct() async {
    final response = await rootBundle.loadString('assets/we_devs_data.json');
    List data = json.decode(response);
    List<Product> factoredData = data.map((e) => Product.fromMap(e)).toList();
    return factoredData;
  }
}
