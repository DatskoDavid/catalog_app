import '../domain/models/category.dart';
import '../domain/models/product.dart';

final categories = <MyCategory>[
  MyCategory(
      name: 'Phones', image: 'assets/images/phone.jpg', products: products),
  MyCategory(
      name: 'Headphones',
      image: 'assets/images/headphone.jpg',
      products: products),
  MyCategory(
      name: 'Laptop', image: 'assets/images/laptop.jpg', products: products),
  MyCategory(name: 'PC', image: 'assets/images/pc.jpg', products: products),
];

final products = <FakeProduct>[
  FakeProduct(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  FakeProduct(
    name: "Acer Aspire 5",
    price: 500,
    amount: 500,
    partNumber: 'partNumber',
    description: 'Xiaomi Redmi Note 7',
    image: 'assets/images/iPhone12.png',
  ),
  FakeProduct(
    name: "Xiaomi Redmi Note 7",
    price: 300,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Acer Aspire 5',
    image: 'assets/images/iPhone12.png',
  ),
  FakeProduct(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  FakeProduct(
    name: "Mac M1",
    price: 5000,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
];

class FakeProduct {
  final String name;
  final int price;
  final int amount;
  final String partNumber;
  final String description;
  final String image;

  FakeProduct({
    required this.name,
    required this.price,
    required this.amount,
    required this.partNumber,
    required this.description,
    required this.image,
  });
}
