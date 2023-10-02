import 'package:flutter/material.dart';

class ArdayButtons extends StatelessWidget {
  const ArdayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
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
                color: Colors.white),
              ),
              Container(
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
                child: const Icon(Icons.save,
                 color: Colors.white
                ),
              ),
              Container(
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
                 color: Colors.white
                ),
              ),
              Container(
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
                child: const Icon(Icons.comment, 
                 color: Colors.white
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}