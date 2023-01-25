import 'package:auto_size_text/auto_size_text.dart';
import 'package:catalog_app/domain/models/product.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:catalog_app/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(product.name),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(AppDimens.normal),
          children: [
            SizedBox(
              height: 200.h,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppRadius.medium),
                ),
                child: Image.asset(product.image),
              ),
            ),
            /*  Center(
              child: Text(
                product.name,
                style: kCategoryHeader,
              ),
            ), */
            _getPadding(AppDimens.tiny),
            Text(
              'Price: \$${product.price}',
              style: kCategoryHeader,
            ),
            _getPadding(AppDimens.tiny),
            Text(
              'Amount: ${product.amount}',
              style: kCategoryHeader,
            ),
            _getPadding(AppDimens.big),
            AutoSizeText(
              '''Descrition: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
              style: kProductDescription,
              maxLines: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPadding(double height) {
    return SizedBox(height: height);
  }
}
