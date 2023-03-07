import 'package:catalog_app/domain/models/product.dart';
import 'package:catalog_app/utils/constants/dimens.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  List<Product>? productDisplay;
  final Function(String) handler;

  SearchBar({Key? key, this.productDisplay, required this.handler})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.normal),
        child: TextField(
          autofocus: false,
          onChanged: (searchText) {
            searchText = searchText.toLowerCase();
            widget.handler(searchText);
            /* setState(() {
              widget.productDisplay = products.where((item) {
                var name = item.name.toLowerCase();
                /* var lName = u.lastName.toLowerCase();
                var job = u.job.toLowerCase(); */
                return name.contains(searchText);
                /* lName.contains(searchText) ||
                    job.contains(searchText); */
              }).toList(); */
          },
          // controller: _textController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
            hintText: 'Search products',
          ),
        ),
      ),
    );
    ;
  }
}
