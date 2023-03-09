import 'package:equatable/equatable.dart';

class ProductDto extends Equatable {
  final String code;
  final String partNumber;
  final num ean;
  final String product;
  final num stock;
  final num price;

  const ProductDto({
    required this.code,
    required this.partNumber,
    required this.ean,
    required this.product,
    required this.stock,
    required this.price,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return ProductDto(
      code: json['code'] as String,
      partNumber: json['partNumber'] as String,
      ean: json['ean'] as num,
      product: json['product'] as String,
      stock: json['stock'] as num,
      price: json['price'] as num,
    );
  }

  @override
  List<Object?> get props => [code, partNumber, ean, product, stock, price];
}
