import 'dart:convert';
import 'dart:developer';

import 'package:catalog_app/data/dto/product_dto.dart';
import 'package:flutter/services.dart';

import '../dto/result_dto.dart';

class RemoteDataSource {
  RemoteDataSource();

  Future<ProductDto> getByName(String name) async {
    return const ProductDto(
      code: 'code',
      partNumber: 'partNumber',
      ean: 123,
      product: 'Default Product',
      stock: 123,
      price: 123,
    );
  }

//----------------------------------------------//

  Future<String> _loadProductDataAsstes() async {
    return await rootBundle.loadString('assets/json/ipad.json');
  }

  Future loadFakeProductData() async {
    final jsonProducts = await _loadProductDataAsstes();
    final jsonResponse = json.decode(jsonProducts);
    final productDTO = ProductDto.fromJson(jsonResponse);
    log(productDTO.toString());
  }

  Future<List<ProductDto>> getAllProducts() async {
    final jsonProducts = await _loadProductDataAsstes();
    final productList = ResultDto.fromJson(json.decode(jsonProducts));

    // log(productList.toString());

    return productList.productDtoList;
  }

  /* Future<List<ProductDto>> getAllProducts() async {
    return const [
      ProductDto(
        code: 'code',
        partNumber: 'partNumber',
        ean: '123',
        product: 'Default Product',
        stock: 123,
        price: 123,
      ),
      ProductDto(
        code: 'code',
        partNumber: 'partNumber',
        ean: '123',
        product: 'Default Product',
        stock: 123,
        price: 123,
      ),
      ProductDto(
        code: 'code',
        partNumber: 'partNumber',
        ean: '123',
        product: 'Default Product',
        stock: 123,
        price: 123,
      ),
    ];
  } */
}
