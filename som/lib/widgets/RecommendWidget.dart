import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("recommended",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
            ),
             Text("see all",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
            )
          ],
        ),
        
        ),
        const SizedBox(height: 3,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i <4; i++)
              Padding(padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(

                child: Image.asset("images/f$i.png",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
                
                ),
              ),
              
              
              )
            ],
          ),
        )

      ],
    );
  }
}