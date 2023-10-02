import 'package:flutter/material.dart';

class MoviePageButtons extends StatelessWidget {
  const MoviePageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]
            ),
            child: const Icon(Icons.add,
            color: Colors.white,
            size: 35,
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]
            ),
            child: const Icon(Icons.favorite,
            color: Colors.white,
            size: 35,
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]
            ),
            child: const Icon(Icons.download,
            color: Colors.white,
            size: 35,
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]
            ),
            child: const Icon(Icons.share,
            color: Colors.white,
            size: 35,
            ),
          ),

          
        ],
      ),
    );
  }
}