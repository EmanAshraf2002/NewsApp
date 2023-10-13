import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_project/models/ArticleModel.dart';
import 'package:news_app_project/services/news_services.dart';
import 'package:news_app_project/widgets/News_list.dart';

class NewsListViweBuilder extends StatefulWidget {
  const NewsListViweBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViweBuilder> createState() => _NewsListViweBuilderState();
}

class _NewsListViweBuilderState extends State<NewsListViweBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future=NewsServices(Dio()).getTopHeadLineNews(
      category:widget.category
    );
  }

  @override
  Widget build(BuildContext context) {
     return FutureBuilder<List<ArticleModel>>(future:future,
         builder: (context , snapshot ) {
           if (snapshot.hasData) {
             return NewsList(articls: snapshot.data!);
           }
           else if(snapshot.hasError){
            return const SliverToBoxAdapter(child:Center(child: Text('Opps,there was an error ,try latter'),),) ;
           }
           else{
            return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()),);
           }
         }

     );
    // return isLoading? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))  :
    // articls.isNotEmpty?  NewsList(articls: articls) :
    // const  SliverToBoxAdapter(child: Center(child: Text('Opps, there was an error ,try latter')),) ;
  }
}
