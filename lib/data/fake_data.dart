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

final products = <Product>[
  Product(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  Product(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  Product(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  Product(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
  Product(
    name: "iPhone 12 Pro",
    price: 999,
    amount: 1000,
    partNumber: 'partNumber',
    description: 'Apple iPhone 12th generation',
    image: 'assets/images/iPhone12.png',
  ),
];
