import 'package:flutter/material.dart';
import 'colors.dart';

class User {
  int ?age;
  double ?date;
  // pitu pitI

}

Widget generateInterest(String conn, Color color) {
  return Container(
    padding: EdgeInsets.fromLTRB(20,10,20,10),
    margin: EdgeInsets.only(left: 4),

    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: Colors.grey, width: 0.9)
    ),
    child: Text(conn, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
  );
}


Widget renderInfo(String category, String value) {
  return Container(
    // padding: EdgeInsets.only(top:10, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Text(
          category,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 17
              ),
            ),

            Icon(Icons.arrow_right)
          ],
        ),

        SizedBox(height: 10),
      ]
    )
  ); 
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

          centerTitle: true,
          automaticallyImplyLeading: false,
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
              TextButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/choice'),
                child: Row(
                  children: [
                    Text(
                      'Płock Sercem',
                      style: TextStyle(color: Colors.white, fontSize:21)
                    )
                  ],
                ),
              ),
            ],

          ),
          
          backgroundColor: orange,
        ),
      

      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
                 // SizedBox(height: 2,),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: const Color.fromARGB(255, 90, 89, 89),
                              offset: Offset(0,4),
                            ),
                          ]
                        ),
                    
                        //padding: EdgeInsets.only(top:130, bottom: 30),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey,
                          child: Icon(Icons.person, size:70),
                                    
                      ),
                  
                                  ), 
                        
                                  Padding(
                  padding: const EdgeInsets.fromLTRB(10,14,10,15),
                  child: Column(
                    children: [
                      Text(
                        "Adam Kowalski",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Wolontariusz",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                                  ),
                        
                                  SizedBox(height: 10,),
                        
                                  Container(
                  width: 1000,
                        
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12), // Kolor cienia
                          spreadRadius: 2, // Rozprzestrzenianie cienia
                          blurRadius: 2, // Rozmycie cienia
                          offset: Offset(0, 3), // Przesunięcie cienia w poziomie i pionie
                        ),
                      ]
                    ),

                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        renderInfo("Data urodzenia:", "21.12.1999"),
                        renderInfo("Numer telefonu:", "+48 123 456 678"),
                        renderInfo("Email:", "a1damkowalski@gmail.com"),
                        renderInfo("Miejsce zamieszkania:", "ul. Kwiatka 8"),
                        renderInfo("Poziom zaufania:", "66% z 3"),
                        
                      ],
                    ),
                  ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical:25),
                        child: Text("Zainteresowania", style: TextStyle(fontSize: 18),)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          generateInterest("Organizacja", Colors.orange),
                          generateInterest("Eventy", Colors.orange),
                          generateInterest("Zbiórki", Colors.orange),

                          Container(
                           // padding: EdgeInsets.fromLTRB(20,10,20,10),
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.add),
                          ),
                        ]
                      ),
                    ],
                  ),
                                  ),
                                  
                                  // SizedBox(height: 240,)
                                ],
                              ),
            
            
          ],
              
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        onTap: (nr) => Navigator.popAndPushNamed(context, "/userMenu"),
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
