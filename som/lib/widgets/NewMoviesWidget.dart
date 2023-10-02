import 'package:flutter/material.dart';


class NewMoviesWidget extends StatelessWidget {
  const NewMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text("new movies",
            style: TextStyle(

              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            
            
            ),
            
            Text("see all",
            style: TextStyle(

              color: Colors.white54,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            
            
            )


          ],







        ),
        
        
        ),
        const SizedBox(height: 13,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1 ;i<4; i++)
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "MoviePage");


                },
                
                child: Container(
                  width: 190,
                  height: 300,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 4,
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),

                        ),
                        child: Image.asset("images/h$i.png" , height: 220,width: 200,fit: BoxFit.fill, ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 5,

                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("movie title here",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 2,),
                          Text("action / adventure",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          


                          ),
                             SizedBox(height: 3,),
                             Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "8.5",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                             )
                        ],
                      ),

                      )
                    ],
                  ),
                ),)
            ],
          ),
        )


      ],


    );
  }
}