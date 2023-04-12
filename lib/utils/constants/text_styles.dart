import 'package:catalog_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const categoryHeader = TextStyle(
    // fontSize: 15.sp,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static const productHeader = TextStyle(
    // fontSize: 15.sp,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const searchError = TextStyle(
    // fontSize: 15.sp,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const productProperties = TextStyle(
    // fontSize: 16.sp,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.kProductPriceColor,
  );

  static const productCardTitle = TextStyle(
    // fontSize: 16.sp,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const productCardPrice = TextStyle(
    // fontSize: 16.sp,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.kProductPriceColor,
  );

  static const searchSuggestion = TextStyle(
    // fontSize: 16.sp,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const productCardDescription = TextStyle(
    // fontSize: 13.sp,
    fontSize: 13,
    fontWeight: FontWeight.w200,
    color: AppColors.kCaptionTextColor,
  );
}
