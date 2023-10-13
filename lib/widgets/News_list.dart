import 'package:flutter/material.dart';
import 'package:news_app_project/models/ArticleModel.dart';
import 'package:news_app_project/widgets/News_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key ,required this.articls});

  final  List<ArticleModel> articls;
  @override
  Widget build(BuildContext context) {
    return  SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return  Padding(
        padding:const  EdgeInsets.only(bottom:32 ),
        child:  NewsTile(articleModel: articls[index]),
      );
    } ,
      childCount: articls.length,
    )
    );

  }
}