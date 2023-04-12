import 'package:equatable/equatable.dart';

import '../../../domain/models/product.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class ProductEmpty extends SearchState {}

class ProductSearchLoading extends SearchState {}

class ProductSearchLoaded extends SearchState {
  final List<Product> products;

  const ProductSearchLoaded(this.products);

  @override
  List<Object> get props => [products];
}

class ProductSearchError extends SearchState {
  final String message;

  const ProductSearchError({required this.message});

  @override
  List<Object> get props => [message];
}
