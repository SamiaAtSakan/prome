class ArticleModel {
  final String title;
  final String content;

  var id;

  ArticleModel({
    required this.title,
    required this.content,
    this.id,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'],
      content: json['content'],
      id: json['id'],
    );
  }
}
