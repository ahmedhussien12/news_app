import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=87055519e0f64a7d9c2409f9d59d7d2f&category='
          '$category');
      Map<String, dynamic> jsonData = response.data;
      //print(jsonData);
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel =  ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      print(e);
      return [];
    }
    //print(articlesList);
    //
    // for(var article in articles){
    //  print(article['author']);
    // }
  }
}
