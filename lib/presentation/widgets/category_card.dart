import 'package:catalog_app/presentation/screens/category_screen.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../../domain/models/category.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';

class CategoryCard extends StatelessWidget {
  final MyCategory category;
  final double categoryCardHeight;

  const CategoryCard({
    super.key,
    required this.category,
    required this.categoryCardHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: category);
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kCategoryCardColor,
              borderRadius: BorderRadius.circular(AppRadius.medium),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: categoryCardHeight - 30,
              width: double.infinity,
              child: ClipRRect(
                /* borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.medium),
                  topRight: Radius.circular(AppRadius.medium),
                ), */
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppRadius.medium),
                ),
                child: Image.asset(
                  category.image,
                  // fit: BoxFit.fitHeight,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            /* left: 18.w,
            bottom: 8.h, */
            left: 18,
            bottom: 8,
            child: Text(
              category.name,
              style: AppTextStyles.categoryHeader,
            ),
          ),
        ],
      ),
    );
    /*  return Container(
      decoration: BoxDecoration(
        color: kCategoryCardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          category.name,
          style: kCategoryHeader
        ),
      ),
    ); */
  }
}
