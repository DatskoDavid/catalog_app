import '../../repositories/product_repository.dart';

import '../../models/product.dart';

class GetAllProducts {
  final ProductRepository productRepository;

  GetAllProducts(this.productRepository);

  Future<List<Product>> execute() async {
    return await productRepository.getAllProducts();
  }
}
