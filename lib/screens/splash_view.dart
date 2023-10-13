import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app_project/screens/homePage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Color splashColor=const Color(0xffcc0000);

  @override
  void initState() {
    super.initState();
    getDelayed();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: splashColor,
      appBar: AppBar(
        backgroundColor:splashColor ,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: splashColor,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(

            children: [
              Image.asset('assets/splash_image.jpg' ,
                width: 150,height:150 ,
                ),
            const  SizedBox(height: 16,),
             const Text('Top News' ,
               style: TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold ,
                 color: Colors.white,
                 fontFamily: 'italic',
               ),
             ),
            ],
          ),
        ),
      ) ,

    );
  }

  getDelayed() async {
    await Future.delayed( const Duration(seconds:5));
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return HomePage();
    }));
    

  }
}





