import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Text("$category"),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
