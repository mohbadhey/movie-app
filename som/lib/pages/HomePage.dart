import 'package:flutter/material.dart';
import 'package:som/widgets/CustomNavBar.dart';

import '../widgets/NewMoviesWidget.dart';
import '../widgets/UpcomingWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hello mohamed',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'what to watch',
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile.jpg",
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Raadi",
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const UpcomingWidget(),
              const SizedBox(
                height: 20,
              ),
              const NewMoviesWidget(),
                    
            ],
          ),
        ),
      ),
   
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
