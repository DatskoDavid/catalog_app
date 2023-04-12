import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchProducts extends SearchEvent {
  final String searchQuery;

  const SearchProducts(this.searchQuery);

  @override
  List<Object> get props => [searchQuery];
}
