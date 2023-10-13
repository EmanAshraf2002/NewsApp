import 'package:flutter/material.dart';
import 'package:news_app_project/widgets/category_list.dart';
import 'package:news_app_project/widgets/news_lisView_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
              style: TextStyle( color: Colors.black ,
                  fontSize: 20,
                  fontWeight: FontWeight.bold ),
            ),
            Text('Today',
              style: TextStyle( color:Color(0xffcc0000) ,
                  fontSize: 20 ,
                  fontWeight: FontWeight.bold ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child:CardList() ),
            SliverToBoxAdapter(child: SizedBox(height: 16,) ,),
            NewsListViweBuilder(category: 'general',),
          ],
        ),
      ),



      //const Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16),
      //   child: Column(
      //     children: [
      //       CardList(),

      //      SizedBox(height: 32,),

      //       Expanded(child: NewsList()),
      //     ],
      //   ),
      // )

    );
  }
}