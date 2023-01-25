import 'package:catalog_app/presentation/widgets/product_card.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../../domain/models/category.dart';

class CategoryScreen extends StatelessWidget {
  final MyCategory category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.name),
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(AppDimens.small),
          itemCount: category.products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: category.products[index]);
          },
          separatorBuilder: (context, index) =>
              const SizedBox(height: AppDimens.small),
        ),
      ),
    );
  }
}
