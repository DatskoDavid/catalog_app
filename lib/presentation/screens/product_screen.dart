import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:catalog_app/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../domain/models/product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(product.product),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(AppDimens.normal),
          children: [
            SizedBox(
              // height: 200.h,
              height: 200,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppRadius.medium),
                ),
                child: Image.asset('assets/images/iPhone12.png'),
              ),
            ),
            Center(
              child: Text(
                product.product,
                style: AppTextStyles.productHeader,
              ),
            ),
            /* _getPadding(AppDimens.large),
            Text(
              'Price: \$${product.price}',
              style: AppTextStyles.productProperties,
            ),
            _getPadding(AppDimens.small),
            Text(
              'Stock: ${product.stock}',
              style: AppTextStyles.productProperties,
            ),
            _getPadding(AppDimens.small),
            Text(
              'EAN: ${product.ean}',
              style: AppTextStyles.productProperties,
            ), */
            _getPadding(AppDimens.large),
            _productProperties(context, 'Price', product.price),
            _getPadding(AppDimens.small),
            _productProperties(context, 'Stock', product.stock),
            _getPadding(AppDimens.small),
            _productProperties(context, 'EAN', product.ean),
            /*  _getPadding(AppDimens.extraLarge),
            _getPadding(AppDimens.extraLarge),
            _getProductProperty(context, 'Price', product.price),
            _getPadding(AppDimens.small),
            _getProductProperty(context, 'Stock', product.stock),
            _getPadding(AppDimens.small),
            _getProductProperty(context, 'EAN', product.ean), */
          ],
        ),
      ),
    );
  }

  Widget _getPadding(double height) {
    return SizedBox(height: height);
  }

  Widget _productProperties(BuildContext context, String title, num value) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title:',
            style: AppTextStyles.productProperties,
          ),
          const SizedBox(width: AppDimens.large),
          Text(
            title == 'Price' ? '\$$value' : '$value',
            style: AppTextStyles.productProperties,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }

  Widget _getProductProperty(BuildContext context, String title, num value) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        padding: const EdgeInsets.symmetric(
            vertical: AppDimens.midSmallNormal, horizontal: 45),
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 199, 199, 199), width: 2),
          color: const Color.fromARGB(255, 206, 204, 204),
          borderRadius: BorderRadius.circular(AppRadius.tiny),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title:',
              style: AppTextStyles.productProperties,
            ),
            const SizedBox(width: AppDimens.large),
            SizedBox(
              width: 50,
              child: Text(
                title == 'Price' ? '\$$value' : '$value',
                style: AppTextStyles.productProperties,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
