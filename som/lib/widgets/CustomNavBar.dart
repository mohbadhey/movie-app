import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 26, 25),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            child: const Icon(Icons.home,
            size: 35,
            color: Colors.white,),
            
          ),
          InkWell(
            onTap: (){
                 Navigator.pushNamed(context, "CategoryPage");
            },
            child: const Icon(Icons.category,
            size: 35,
            color: Colors.white,),
            
          ),
          InkWell(
            onTap: (){},
            child: const Icon(Icons.favorite,
            size: 35,
            color: Colors.white,),
            
          ),
          InkWell(
            onTap: (){},
            child: const Icon(Icons.person,
            size: 35,
            color: Colors.white,),
            
          )
        ]),
      ),
    );
  }
}