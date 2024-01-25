import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
    appBar:AppBar(
    title:const Text('newsApp',style:TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    ),
        actions:[
          Icon(
            Icons.notifications,
            color:Colors.amber,
          )
        ],
      elevation: 0,
    ),
    body:Padding(
      padding:const EdgeInsets.all(6.0),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 3,
        ),
        Text('BreakingNews',style: TextStyle(fontSize: 40,
        color:Colors.black,fontWeight: FontWeight.bold),),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  width: 300,
                  height: 150,
                  clipBehavior:Clip.antiAliasWithSaveLayer ,
                  child: Image(image:
                  AssetImage('images/download.png'),

                  ),
                ),
                Container(
                  height: 130,
                    width: 150,
                  alignment: Alignment.bottomLeft,
                  child: Text('flutter App',style: TextStyle(
                    fontSize: 40,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                )
              ],
            ),
            SizedBox(width: 15),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 152,
                    height: 150,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(image: AssetImage('images/download.png'),),

                ),
                Container(
                  height: 130,
                    width: 150,
                  alignment: Alignment.bottomLeft,
                  child: Text('flutter App',style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                )
              ],
            )
          ],
        ),),
        SizedBox(height: 50),
        Text('flutter news',style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
        ),
        ),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)
         ),

         height:200,
         width: 400,
         alignment: Alignment.center,
         child: Image(image: AssetImage('images/photo_2024-01-25_19-35-27.jpg'),
    ),
       ) ,
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)
          ),

          height:200,
          width: 400,
          alignment: Alignment.center,
          child: Image(image: AssetImage('images/photo_2024-01-25_19-35-27.jpg'),
          ),
        ) ,

      ],
    )
    ),


),
    );

  }


}
