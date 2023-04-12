import 'package:catalog_app/presentation/widgets/product_card.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:catalog_app/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/di/injector.dart';
import '../bloc/search_bloc/search_bloc.dart';
import '../bloc/search_bloc/search_event.dart';
import '../bloc/search_bloc/search_state.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search product...');

  final _suggestion = [
    'Apple iPhone 14',
    'Xiaomi Redmi Note 7',
    'Acer Aspire 5',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back_outlined),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final _bloc = i.get<ProductSearchBloc>()..add(SearchProducts(query));

    return BlocBuilder<ProductSearchBloc, SearchState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is ProductEmpty) {
          return const Center(
            child: Text('nicho?'),
          );
        } else if (state is ProductSearchLoaded) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return ProductCard(product: state.products[index]);
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: state.products.isNotEmpty ? state.products.length : 0,
          );
        } else {
          return const Center(
            child: Text(
              'Error',
              style: AppTextStyles.searchError,
            ),
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return Container();
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.normal,
        horizontal: AppDimens.normal,
      ),
      itemBuilder: (context, index) {
        return Text(
          _suggestion[index],
          style: AppTextStyles.searchSuggestion,
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: Color.fromARGB(255, 219, 219, 219),
      ),
      itemCount: _suggestion.length,
    );
  }
}
