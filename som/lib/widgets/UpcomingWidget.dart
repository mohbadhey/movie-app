import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [


const Padding(padding: EdgeInsets.symmetric(horizontal: 10),

child: Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,


  children: [

    Text("upcoming movies", 
    style: TextStyle(
      color:Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w500,



    ),
    ),
      Text("see all", 
    style: TextStyle(
      color:Colors.white24,
      fontSize: 16,
      fontWeight: FontWeight.w500,



    ),
    )
  ],
),



),
const SizedBox(height: 10,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    
    
    
    children: [

      for (int i =1; i<4; i ++)

    Padding(padding:  const EdgeInsets.only(left: 10),
    child: ClipRRect(

      borderRadius: BorderRadius.circular(15),
      child: Image.asset("images/f$i.png" , 
      height: 170,
      width: 150,
      fit: BoxFit.cover,
      
      
      ),



    ),
    
    
    
    
    )






  ],),



)


      ],





    );
  }
}