import 'package:flutter/material.dart';

import '../../domain/models/category.dart';


class CategoryScreen extends StatelessWidget {
  final MyCategory category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.name),
          centerTitle: true,
        ),
        body: ListView(
          
        )
      ),
    );
  }
}
