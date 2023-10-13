import 'package:flutter/material.dart';
import 'package:news_app_project/models/CategoryModel.dart';
import 'package:news_app_project/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key , required this.cat});
  final CategoryModel cat;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).
        push(MaterialPageRoute(builder: (context){
          return  CategoryView(categoryValue: cat.cateegoryName,);
        },
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height:100,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage(cat.image),
                  fit:BoxFit.fill )

          ),
          child: Center(
            child:Text(cat.cateegoryName,
              style:const TextStyle(  color: Colors.white ,fontSize: 22,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    )

    ;
  }
}