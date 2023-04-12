import 'package:catalog_app/domain/use_cases/product/get_all_products.dart';
import 'package:catalog_app/presentation/bloc/search_bloc/search_event.dart';
import 'package:catalog_app/presentation/bloc/search_bloc/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetAllProducts getAllProducts;

  ProductSearchBloc(this.getAllProducts) : super(ProductEmpty()) {
    on<SearchProducts>(_search);
  }

  void _search(SearchProducts event, Emitter<SearchState> emit) async {
    final allProducts = await getAllProducts.execute();

    final _searchResult = allProducts.where((item) {
      final name = item.product.toLowerCase();
      return name.contains(event.searchQuery);
      // partNumber.contains(searchText) || id.contains(searchText)
    }).toList();

    //TODO: ask Bogdan what behavior is better
    if (event.searchQuery == '') {
      _searchResult.clear();
    }

    emit(ProductSearchLoaded(_searchResult));
  }
}
