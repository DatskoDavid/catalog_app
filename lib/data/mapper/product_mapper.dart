import 'package:catalog_app/domain/models/product.dart';

import '../dto/product_dto.dart';

class ProductMapper {
  static fromDto(ProductDto productDto) {
    return Product(
      code: productDto.code,
      partNumber: productDto.partNumber,
      ean: productDto.ean.toInt(),
      product: productDto.product,
      stock: productDto.stock.toInt(),
      price: productDto.price.toDouble(),
    );
  }
}
