import 'package:auto_size_text/auto_size_text.dart';
import 'package:catalog_app/presentation/screens/category_screen.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../domain/models/category.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';

class CategoryCard extends StatelessWidget {
  final MyCategory category;

  const CategoryCard({super.key, required this.category});

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
      child: SizedBox(
        height: 23.h,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.3.h),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: kCategoryCardColor,
                borderRadius: BorderRadius.circular(AppRadius.medium),
              ),
            ),
            Positioned(
              child: SizedBox(
                // height: 100.h,
                height: 170.h,
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
              left: 18.w,
              bottom: 10.h,
              child: AutoSizeText(
                category.name,
                maxLines: 1,
                style: kCategoryHeader,
              ),
            ),
          ],
        ),
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
