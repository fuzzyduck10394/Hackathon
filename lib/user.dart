import 'package:flutter/material.dart';


class User {
  int ?age;
  double ?date;
  // pitu pitI

}
Widget generateInterest(String conn, Color color) {
  return Container(
    padding: EdgeInsets.fromLTRB(25,13,25,13),
    margin: EdgeInsets.only(left: 4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Text(conn, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
  );
}


Widget renderInfo(String category, String value) {
  return Container(
    padding: EdgeInsets.only(top:10, bottom: 10),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left : 30.0),
          child: Text(category, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 10),
        Padding(
          padding: EdgeInsets.only(right : 30.0),
          child: Text(value, style: TextStyle(fontSize: 20), textAlign: TextAlign.start),
        ),
        
        
      ],
      
    ),
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
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child:Container(
                  margin: EdgeInsets.only(bottom:10),
                  child: TextButton(
                  onPressed: () => (Navigator.pop(context)),
                  child: Icon(Icons.arrow_back, color: Colors.white, size:30),
                  ),
                ),
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                     SizedBox(height: 13,),
                      Container(           
                        decoration: BoxDecoration(
                          color:Colors.white,
                          border: Border.all(width: 4, color:Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(blurRadius: 10, color: Color.fromARGB(255, 90, 89, 89))
                          ]
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
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
                        padding: const EdgeInsets.fromLTRB(10,40,10,40),
                        child: Text(
                          "Adam Kowalski",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          renderInfo("Dat.urodzenia", "21.12.1999"),
                          renderInfo("Nr tel", "+48 123 456 678"),
                          renderInfo("Email", "a1damkowalski@gmail.com"),
                        ],
                      ),
                      SizedBox(height: 90),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal : 26.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            generateInterest("Organizacja", Colors.orange),
                            generateInterest("Eventy", Colors.orange),
                            generateInterest("Zbiórki", Colors.orange),
                          ]
                        ),
                      ),
                      
                      SizedBox(height: 200,)
                    ],
                  ),
                ),
                
                
              ],
      
            ),
            
      
      
            
          ],
        ),
      ),

    );
  }
}
