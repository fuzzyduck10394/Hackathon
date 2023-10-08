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

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/logo3.png'
                ),
                width: 24,
                height: 24,
              ),
              SizedBox(width: 10),
              Text(
                'Płock Sercem',
                style: TextStyle(color: Colors.white)
              ),
            ],

          ),
          
          

          backgroundColor: orange,
        ),

        body: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),

          child: Column(
            children: [

              //tekst 1
              Container(
                alignment: Alignment.bottomLeft,
                height: 100.0,
              
                child: Text(
                  'Odkryj nowe wydarzenia',
              
                  style: TextStyle(
                    fontSize: 34.0,
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
                    fontSize: 20.0,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( // text field
                    height: 60,
                    width: 400,
                    
                    child: TextField(
                      decoration: InputDecoration(
                        // icon:
                        
                        hintText: 'Szukaj...',
                        border: OutlineInputBorder(),
                      )
                    ),
                  ),


                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: gray,
                        width: 1.5,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                    
                      icon: Icon (
                        Icons.list,
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 70,),

              Column(children: [
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                  Event('Big Festivalowski','Opis','2109',[category('zwierzeta')]),
                  SizedBox(height: 20,),
                  Event('Akcja "Pomóż seniorowi"', 'Opis2taki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jesttaki ifhaijoaw opis jest taki opis jest sjfasfk taki opis jest', '22.06', [category('gotowanie'), category('kategoria')]),
                  SizedBox(height: 20,),
                ] 

                )
                             
              
              
            ],           

          ),

        ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Ulubione',
            
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,

              color: Colors.grey,
            ),
            label: 'Strona główna'
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.face, 

              color: Colors.grey,
            ),
            label: 'Mój profil'
          )
        ],
      )
    );
  }  
}

class category extends StatelessWidget {
  final String arg;

  category(this.arg);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: light_blue,
      ),

      padding: EdgeInsets.only(right: 7.0, left: 7.0, bottom: 2, top: 2),

      child: Text(
        arg,
        style: TextStyle(
          color: Colors.white,
          // fontStyle: FontStyle.italic,
          fontSize: 12,
        )
      )
    );
  }
}

class Event extends StatelessWidget{
  final String title;
  final String description;
  final String date;
  final List<Widget> categories;

  Event(this.title, this.description, this.date, this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(255, 250, 247, 247),
        
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12), // Kolor cienia
            spreadRadius: 2, // Rozprzestrzenianie cienia
            blurRadius: 2, // Rozmycie cienia
            offset: Offset(0, 3), // Przesunięcie cienia w poziomie i pionie
          ),
        ],        
      ),
      
      padding: EdgeInsets.all(15.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )
              ),

              Text (
                date,
                style: TextStyle(
                  color: gray,
                  //fontStyle: FontStyle.italic,
                  fontSize: 12
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25, top: 10),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
              )
            ),
          ),


          Row(
            children:categories,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [    

              Icon(
                Icons.favorite_outline_outlined,
                color: Colors.grey,
              ),

              SizedBox(width: 10),

              Icon(
                Icons.more_horiz_outlined,
                color: Colors.grey,
              ),


            ],
          )
        ],
      ),


      
    );
    
  }
}

