import 'package:bloc/bloc.dart';
import 'package:catalog_app/domain/use_cases/product/get_all_products.dart';

import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<QuizEvent, ProductState> {
  final GetAllProducts getAllProducts;

  ProductBloc(this.getAllProducts)
      : super(
          const ProductState(
            products: [],
          ),
        ) {
    on<InitProducts>(_init);
  }

  void _init(InitProducts event, Emitter<ProductState> emit) async {
    final products = await getAllProducts.execute();
    emit(state.copyWith(products: products));
  }
}
