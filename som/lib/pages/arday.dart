import 'package:flutter/material.dart';

import '../widgets/ArdayButtons.dart';
import '../widgets/CustomNavBar.dart';
import '../widgets/kuwakale.dart';

class MyArday extends StatelessWidget {
  const MyArday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 44, 255, 220),
      body: Stack(children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            "images/a5.jpg",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.blue,
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/a1.jpg",
                          fit: BoxFit.fill,
                          height: 200,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 70, right: 30),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.lightGreen,
                            blurRadius: 2,
                            spreadRadius: 3,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.play_circle,
                        color: Colors.white,
                        size: 100,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ArdayButtons(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ARDAY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      " waa film ku saabsan arday scool dhiganeyso oo aad u xiiso badan  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
                  const SizedBox(height: 13,),
                  const kuwakale(),
            ],
          ),
        )
      ]),
       bottomNavigationBar: const CustomNavBar(),
    );
  }
}
