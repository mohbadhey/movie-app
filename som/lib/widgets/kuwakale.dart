import 'package:flutter/material.dart';
class kuwakale extends StatelessWidget {
  const kuwakale({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Qeybaha kale daawo" ,style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
              Text("ayaga dhan arag", style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
        ),
        const SizedBox(height: 12,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child: Row(
            children: [
                for(int i=1; i <10; i++)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipRRect(
              
                  child: Image.asset("images/a$i.jpg",
                  height: 200,
                  width: 170,
                  fit: BoxFit.fill,
                  
                  ),
                ),
              ),



          ],)
        )
      ],
    );
  }
}