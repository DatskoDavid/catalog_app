import '../../data/fake_data.dart';

class MyCategory {
  final String name;
  final String image;
  final List<FakeProduct> products;

  MyCategory({
    required this.name,
    required this.image,
    required this.products,
  });
}
