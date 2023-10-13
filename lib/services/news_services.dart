//import 'dart:math';
import 'package:dio/dio.dart';
import 'package:news_app_project/models/ArticleModel.dart';
import 'dart:async';

class NewsServices{
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadLineNews({required String category}) async {

    try {
      Response response= await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=c2e55aa08d9f4f01a320b373d4863b57&category=$category');
      Map<String,dynamic> jasonData= response.data;

      List<dynamic> articles =jasonData['articles'];

      List<ArticleModel> articleList=[];

      for(var article in articles){

        ArticleModel articleObject= ArticleModel(image: article['urlToImage'],
            title:article['title'], subTitle: article['description'], url: article['url']);

        articleList.add(articleObject);
      }

      return articleList;
    }  catch (e) {
      return [];
    }

  }

}





