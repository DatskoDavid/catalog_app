import 'package:auto_size_text/auto_size_text.dart';
import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../../domain/models/product.dart';
import '../../utils/constants/text_styles.dart';
import '../screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductScreen(product: product);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.tiny,
          horizontal: AppDimens.normal,
        ),
        decoration: BoxDecoration(
          color: AppColors.kCategoryCardColor,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                // height: 70.h,
                height: 70,
                child: Image.asset(
                  product.image,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: AppTextStyles.productCardTitle,
                    ),
                    AutoSizeText(
                      maxLines: 1,
                      product.description,
                      style: AppTextStyles.productCardDescription,
                    ),
                  ],
                ),
              ),
              Text(
                '\$${product.price}',
                style: AppTextStyles.productCardPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
