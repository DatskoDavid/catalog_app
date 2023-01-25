import 'package:auto_size_text/auto_size_text.dart';
import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              return const ProductScreen();
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
          color: kCategoryCardColor,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                height: 70.h,
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
                      style: kProductCardTitle,
                    ),
                    AutoSizeText(
                      maxLines: 1,
                      product.description,
                      style: kProductCardDescription,
                    ),
                  ],
                ),
              ),
              Text(
                '${product.price} \$',
                style: kProductCardTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
