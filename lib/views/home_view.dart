import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,elevation: 0,shadowColor: Colors.transparent,scrolledUnderElevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                "Clone",
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )
            ],
          ),
        ),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              NewsListView()
            ],
          ),
        ));
  }
}
