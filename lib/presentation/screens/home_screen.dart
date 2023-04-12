import 'package:catalog_app/data/fake_data.dart';
import 'package:catalog_app/utils/constants/colors.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/custom_search_delegate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
          actions: [
            TextButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
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
