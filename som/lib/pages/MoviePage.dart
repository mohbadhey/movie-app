import 'package:flutter/material.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/MoviePageButtons.dart';
import '../widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
     
         Opacity(
            opacity: 0.4,
            child: Image.asset(
              'images/f3.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
              child: SafeArea(
                  child: Column(children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/h2.png",
                        height: 250,
                        width: 180,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50,top: 30),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red,
                      boxShadow: [BoxShadow(
                        color: Colors.red.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                      )]
                    ),
                    child: const Icon(Icons.play_arrow,
                      color: Colors.white,
                    size: 60,

                    ),
                  
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const MoviePageButtons(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("thor ",
                style: TextStyle(

                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height:7 ,),
                Text("this is thor movie yiu can watch it freely on our application , and here is the describtion of the movie and we hope yopu enjoy ",
                style: TextStyle(

                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                ),
              ],
            ),
            ),
            const SizedBox(height: 5,),
            const RecommendWidget(),
          ]))),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
