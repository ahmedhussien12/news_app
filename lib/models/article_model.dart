class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? url;

  ArticleModel(
      {required this.image, required this.title, required this.subTitle,this.url});
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'] as String?,
      title: json['title'] as String?,
      subTitle: json['description'] as String?,
      url: json['url'] as String?,
    );
  }
}
