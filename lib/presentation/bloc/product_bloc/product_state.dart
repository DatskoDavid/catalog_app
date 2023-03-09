import 'package:equatable/equatable.dart';

import '../../../domain/models/product.dart';

class ProductState extends Equatable {
  final List<Product> products;

  const ProductState({required this.products});

  ProductState copyWith({List<Product>? products}) =>
      ProductState(products: products ?? this.products);

  @override
  List<Object?> get props => [products];
}
