import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String code;
  final String partNumber;
  final int ean;
  final String product;
  final int stock;
  final double price;

  const Product({
    required this.code,
    required this.partNumber,
    required this.ean,
    required this.product,
    required this.stock,
    required this.price,
  });

  Product copyWith({
    String? code,
    String? partNumber,
    int? ean,
    String? product,
    int? stock,
    double? price,
  }) {
    return Product(
      code: code ?? this.code,
      partNumber: partNumber ?? this.partNumber,
      ean: ean ?? this.ean,
      product: product ?? this.product,
      stock: stock ?? this.stock,
      price: price ?? this.price,
    );
  }

  @override
  List<Object?> get props => [code, partNumber, ean, product, stock, price];
}
