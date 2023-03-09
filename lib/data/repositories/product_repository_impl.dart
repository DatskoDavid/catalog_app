import 'dart:developer';

import 'package:catalog_app/data/dto/product_dto.dart';

import '../../domain/models/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../data_source/remote_data_source.dart';
import '../mapper/product_mapper.dart';

class ProductRepositoryImpl implements ProductRepository {
  final RemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Product> getProductByName(String name) async =>
      await ProductMapper.fromDto(
          remoteDataSource.getByName(name) as ProductDto);

  @override
  Future<List<Product>> getAllProducts() async {
    final result = await remoteDataSource.getAllProducts();

    final productsList = result
        .map((item) => ProductMapper.fromDto(item))
        .cast<Product>()
        .toList();

    log(productsList.toString());

    return productsList;
  }
}
