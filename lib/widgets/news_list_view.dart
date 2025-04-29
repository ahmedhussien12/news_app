import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 22),
                child: NewsTile(articleModel: articles[index],)
                ),
              ),
            );


    // ListView.builder(itemBuilder: (context, index) => Padding(
    //   padding: const EdgeInsets.only(bottom: 22),
    //   child: NewsTile(),
    // ),itemCount: 10,
    //
    // // physics:  NeverScrollableScrollPhysics(),
    //   // shrinkWrap: true, hena bs el moshkla eno bybni el item kolha mra w7da
    //  );
  }
}
