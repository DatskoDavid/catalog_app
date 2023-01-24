import 'package:catalog_app/domain/models/product.dart';

class MyCategory {
  final String name;
  final String image;
  final List<Product> products;

  MyCategory({
    required this.name,
    required this.image,
    required this.products,
  });
}
