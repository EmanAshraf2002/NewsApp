import 'package:flutter/material.dart';
import 'package:news_app_project/models/CategoryModel.dart';
import 'package:news_app_project/screens/homePage.dart';
import 'package:news_app_project/widgets/news_lisView_builder.dart';

class CategoryView extends StatelessWidget{
  const CategoryView({super.key, required this.categoryValue});
  final String categoryValue;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Top Headlines',style: TextStyle(
          fontSize: 20,color: Colors.white
        ),),
        backgroundColor: const Color(0xffcc0000),
        leading:IconButton(onPressed:(){
         Navigator.push(context,MaterialPageRoute(builder: (context){
           return const HomePage();
         } ,
         )
         ) ;
        },
            icon:const Icon(Icons.arrow_back)) ,
      ),

      body: CustomScrollView(
        slivers: [
          NewsListViweBuilder(category: categoryValue),
        ],




      ),

    );

  }






}