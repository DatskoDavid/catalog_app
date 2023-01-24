import 'package:catalog_app/data/fake_data.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(AppDimens.big),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(AppDimens.small),
            child: CategoryCard(category: categories[index]),
          ),
        ),
        
        /* body: GridView.count(
          padding: const EdgeInsets.all(AppDimens.big),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          children: [
            CategoryCard(category: categories[0]),
            CategoryCard(category: categories[1]),
            CategoryCard(category: categories[2]),
            CategoryCard(category: categories[3]),
          ],
        ), */
        
      ),
    );
  }
}
