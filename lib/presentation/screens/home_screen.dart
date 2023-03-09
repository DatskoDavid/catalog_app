import 'package:catalog_app/data/fake_data.dart';
import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  // List<Product> _productDisplay = products;
  // late final List<FakeProduct> _productDisplay;

/*   void _searchProducts(String searchText) {
    setState(() {
      _productDisplay = products.where((item) {
        final name = item.name.toLowerCase();
        return name.contains(searchText);
        // partNumber.contains(searchText) || id.contains(searchText)
      }).toList();

      //TODO: ask Bogdan what behavior is better
      if (searchText == '') {
        _productDisplay.clear();
      }
    });
  } */

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const externalPaddings = AppDimens.big;
    const internalPaddings = AppDimens.small;

    final categoryCardHeight = (MediaQuery.of(context).size.width -
            externalPaddings * 2 -
            internalPaddings * 4) /
        2;
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: AppColors.kPrimaryColor,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.search,
                color: AppColors.kWhiteColor,
              ),
            ),
          ],
          title: const Text('Categories'),
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(externalPaddings),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(internalPaddings),
            child: CategoryCard(
                category: categories[index],
                categoryCardHeight: categoryCardHeight),
          ),
        ),
      ),
    );
  }
}
