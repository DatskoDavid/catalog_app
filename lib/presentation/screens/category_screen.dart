import 'package:catalog_app/domain/use_cases/product/get_all_products.dart';
import 'package:catalog_app/presentation/bloc/product_bloc/product_event.dart';
import 'package:catalog_app/presentation/bloc/product_bloc/product_state.dart';
import 'package:catalog_app/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:catalog_app/presentation/widgets/product_card.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/di/injector.dart';
import '../../domain/models/category.dart';

class CategoryScreen extends StatefulWidget {
  final MyCategory category;

  const CategoryScreen({super.key, required this.category});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late final ProductBloc _bloc;

  @override
  void initState() {
    _bloc = i.get<ProductBloc>()..add(InitProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.category.name),
          centerTitle: true,
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          bloc: _bloc,
          builder: (context, state) {
            return ListView.separated(
              padding: const EdgeInsets.all(AppDimens.small),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: state.products[index]);
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: AppDimens.small),
            );
          },
        ),
      ),
    );
  }
}
