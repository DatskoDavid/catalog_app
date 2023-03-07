import 'package:catalog_app/data/fake_data.dart';
import 'package:catalog_app/presentation/widgets/product_card.dart';
import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../../domain/models/product.dart';
import '../widgets/category_card.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  // List<Product> _productDisplay = products;
  List<Product> _productDisplay = <Product>[];

  void _searchProducts(String searchText) {
    setState(() {
      _productDisplay = products.where((item) {
        var name = item.name.toLowerCase();
        // var partNumber = item.partNumber.toLowerCase();
        return name.contains(searchText);
        // partNumber.contains(searchText) || id.contains(searchText)
      }).toList();

      //TODO: ask Bogdan what behavior is better
      if (searchText == '') {
        _productDisplay.clear();
      }
    });
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
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.search,
                color: AppColors.kWhiteColor,
              ),
            ),
          ],
          title: const Text('Categories'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView.separated(
            itemBuilder: (context, index) {
              /*  return Padding(
                padding: const EdgeInsets.all(AppDimens.small),
                child: ProductCard(product: _productDisplay[index]),
              ); */
              return index == 0
                  ? SearchBar(handler: _searchProducts)
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimens.small,
                      ),
                      child: ProductCard(product: _productDisplay[index - 1]),
                    );
              ;
              /* if (_productDisplay.isNotEmpty) {
                
              } else {
                return SearchBar(handler: _searchProducts);
              } */
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: AppDimens.small,
            ),
            itemCount: _productDisplay.length + 1,
            // itemCount: _productDisplay != null ? _productDisplay!.length : 1,
          ),

          /*  child: SearchBar(
            handler: _searchProducts,
          ), */

          // child: SearchBar(),
          /* child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              /* DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                ),
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ), */
              
              SearchBar(),

              /* ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ), */
            ],
          ), */
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

        /* body: Stack(
          children: [
            GridView.builder(
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
            const SearchBar(),
          ],
        ), */
      ),
    );
  }
}
