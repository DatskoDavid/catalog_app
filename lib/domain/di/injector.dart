import 'package:catalog_app/data/data_source/remote_data_source.dart';
import 'package:catalog_app/data/repositories/product_repository_impl.dart';
import 'package:catalog_app/domain/use_cases/product/get_all_products.dart';
import 'package:catalog_app/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';

import '../repositories/product_repository.dart';

GetIt get i => GetIt.instance;

void initInjector() {
  _initDataSources();
  _initRepositories();
  _initUsecases();
  _initBlocs();
}

void _initDataSources() {
  i.registerSingleton<RemoteDataSource>(RemoteDataSource());
}

void _initRepositories() {
  i.registerSingleton<ProductRepository>(ProductRepositoryImpl(i.get()));
}

void _initUsecases() {
  i.registerSingleton<GetAllProducts>(GetAllProducts(i.get()));
}

void _initBlocs() {
  i.registerSingleton<ProductBloc>(ProductBloc(i.get()));
}
