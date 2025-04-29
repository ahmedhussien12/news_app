import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder_loading.dart';
import 'package:news_app/widgets/news_list_view_builder_has_error.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
final String category;
  const NewsListViewBuilder({super.key, required this.category, });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(category: widget.category);
  }
  //bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return NewsListViewsBuilderHasErrorr();
        } else {
          return NewsListViewBuilderLoading();
        }
      },
    );

    // return isLoading
    //     ? SliverToBoxAdapter(
    //         child: SizedBox(
    //           height: MediaQuery.of(context).size.height - 200,
    //           child: Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         ),
    //       ) : articles.isEmpty ? SliverToBoxAdapter(child: Center(child: Text("No news"),),)
    //     : NewsListView(articles: articles);
  }
}
