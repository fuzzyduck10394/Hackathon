import 'package:flutter/material.dart';
import 'colors.dart';

class MenuUser extends StatelessWidget {

  const MenuUser({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
  
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

          child: Column(
            children: [

              //tekst 1
              Container(
                alignment: Alignment.bottomLeft,
                height: 80.0,
              
                child: Text(
                  'Odkryj nowe wydarzenia',
              
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              // tekst 2
              Container(
                alignment: Alignment.bottomLeft,
                //height: 100.0,
              
                child: Text(
                  'i pomagaj innym.',
              
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container( // text field
                height: 60,
                
                child: TextField(
                  decoration: InputDecoration(
                    // icon:
                    hintText: 'Szukaj...',
                    suffixIcon:Icon(Icons.filter_list_alt),
                    border: OutlineInputBorder(),
                  )
                ),
              ),

              SizedBox(height: 30,),

              Event('Tytul', 'Opis tutaj fiuwajiof ttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jestaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', [category('tak')]),
              SizedBox(height: 20,),
              Event('Tytul2', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', [category('tak'), category('nie')]),
            ],           

          ),

        ),

      
    );
  }  
}

class category extends StatelessWidget {
  final String arg;

  category(this.arg);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),

      padding: EdgeInsets.all(3.0),

      child: Text(
        arg,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        )
      )
    );
  }
}

class Event extends StatelessWidget{
  final String title;
  final String date;
  final List<Widget> categories;

  Event(this.title, this.date, this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orange,
      
      padding: EdgeInsets.all(15.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
          ),
          Text(
            date,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 11,
            )
          ),
          Row(
            children:categories,
          ),
        ],
      ),

      
    );
  }

}

