import '../../data/data_source/remote_data_source.dart';
import '../models/product.dart';

abstract class ProductRepository {
  Future<Product> getProductByName(String name);

  Future<List<Product>> getAllProducts();

  /* Future<Product> getProductByEan(String name);

  Future<Product> getAllProducts(); */
}
