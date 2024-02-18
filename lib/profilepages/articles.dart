import 'package:flutter/material.dart';
import 'package:prome/apis/articles_api.dart';
import 'package:prome/models/article_model.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  List<ArticleModel> yourArticles = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Fetch your articles using the API
      List<ArticleModel> fetchedArticles = await ArticlesApi().getArticles();

      setState(() {
        yourArticles = fetchedArticles;
      });
    } catch (e) {
      // Handle errors
      print('Error fetching articles: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: yourArticles.isEmpty
            ? Center(child: CircularProgressIndicator())
            : _buildArticleList(yourArticles),
      ),
    );
  }

  Widget _buildArticleList(List<ArticleModel> yourArticles) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: yourArticles.length,
        itemBuilder: (context, index) {
          ArticleModel article = yourArticles[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        article.title,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        article.content!,
                        style: TextStyle(color: Colors.black),
                      ),
                      // Add more fields as needed
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
