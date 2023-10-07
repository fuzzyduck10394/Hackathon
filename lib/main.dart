import 'package:flutter/material.dart';

Color white = Color.fromRGBO(229, 229, 229, 1);
Color orange = Color.fromRGBO(242, 103, 34, 1);
Color black = Color.fromRGBO(24, 18, 18, 1);

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {

  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(
        fontFamily: 'Gabarito',
        primaryColor: black,
      ),
      home: Scaffold(
  
        appBar: AppBar(
          centerTitle: true,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),

          title: Text(
            'Płock sercem',
            style: TextStyle(color: Colors.white)
          ),

          backgroundColor: orange,
        ),

         

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:Container(
              
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child:Container(
                    alignment: Alignment.bottomLeft,
                  //height: 100.0,

                    child:Text(
                      'Szukaj...',
                       style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      )
                    ),

                    )
                  ),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    )
                  )
                ]
    
              )
          ),
          
        ),

      ),
    );
  }
}