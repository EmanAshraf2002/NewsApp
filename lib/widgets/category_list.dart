import 'package:flutter/material.dart';
import 'package:news_app_project/models/CategoryModel.dart';
import 'package:news_app_project/widgets/category_card.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  final List<CategoryModel> catigorises=const[CategoryModel(image:'assets/business.jpg',
      cateegoryName: 'business'),
    CategoryModel(image: 'assets/entertainment.jpeg', cateegoryName: 'entertainment'),
    CategoryModel(image: 'assets/general.jpg', cateegoryName:'general'),
    CategoryModel(image: 'assets/health.jpg', cateegoryName:'health'),
    CategoryModel(image: 'assets/science1.jpeg', cateegoryName:'science'),
    CategoryModel(image: 'assets/sports.webp', cateegoryName:'sports'),
    CategoryModel(image: 'assets/technology.jpg', cateegoryName:'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:catigorises.length,
        itemBuilder: (context, index) {
          return CategoryCard(cat: catigorises[index]);
        } ,
      ),
    );

  }
}