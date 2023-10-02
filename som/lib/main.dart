import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:som/pages/HomePage.dart';
import 'package:som/pages/MoviePage.dart';
import 'package:som/pages/arday.dart';
import 'package:som/pages/categoryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


    @override
   void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);


     super.initState();
     
   }


  @override
  Widget build(BuildContext context) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      

      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0F111F)
      


      ),
      routes: {
        "/" : (context) => const MyArday(),
        "CategoryPage": ((context) => const CategoryPage()),
        "MoviePage": ((context) => const MoviePage())



      },




    );
  }
}