import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../../domain/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kCategoryCardColor,
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Text(product.name),
            ),
            Text(
              product.price.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
