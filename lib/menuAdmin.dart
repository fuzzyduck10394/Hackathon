import 'package:flutter/material.dart';
import 'colors.dart';

class MenuAdmin extends StatefulWidget {
  const MenuAdmin({super.key});

  @override
  State<MenuAdmin> createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: new Key("menuAdm"),
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
              child: Image.asset('assets/images/logo3.png'),
              width: 24,
              height: 24,
            ),
            SizedBox(width: 10),
            TextButton(
              onPressed: () => Navigator.popAndPushNamed(context, '/choice'),
              child: Text('Płock Sercem',
                  style: TextStyle(color: Colors.white, fontSize: 21)),
            ),
          ],
        ),
        backgroundColor: orange,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 30.0, 5.0, 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // TextField
                    height: 60,
                    width: 290,

                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Szukaj wolontariusza...',
                      border: OutlineInputBorder(),
                    )),
                  ),
                  Container(
                    // Filter
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.list,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Twoje zgłoszenia:',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              SizedBox(height: 25),
              Event(
                  'Big Festivalowski',
                  '  Jeśli chcesz stać się częścią nowo powstającego festiwalu, przeżyć przygodę, a przy okazji sporo się nauczyć, to zapraszamy Cię do Wolontariatu!  Wystarczy, że wypełnisz formularz zgłoszeniowy, a my się do Ciebie odezwiemy!',
                  '18.08 - 20.08', [
                category('festiwal'),
                category('animator'),
                category('dla niepełnoletnich')
              ]),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/addContentAdmin'),
          backgroundColor: orange,
          child: Icon(Icons.add, size: 40, color: Colors.white),
        ),
      ),
    );
  }
}

class Admincategory extends StatelessWidget {
  final String arg;

  Admincategory(this.arg);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: lighter_blue,
        ),
        padding: EdgeInsets.only(right: 7.0, left: 7.0, bottom: 2, top: 2),
        child: Text(arg,
            style: TextStyle(
              color: Colors.white,
              // fontStyle: FontStyle.italic,
              fontSize: 12,
            )));
  }
}

class category extends StatelessWidget {
  final String arg;

  category(this.arg);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: light_blue,
        ),
        padding: EdgeInsets.only(right: 7.0, left: 7.0, bottom: 2, top: 2),
        child: Text(arg,
            style: TextStyle(
              color: Colors.white,
              // fontStyle: FontStyle.italic,
              fontSize: 12,
            )));
  }
}

class Event extends StatelessWidget {
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
              Text(title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                date,
                style: TextStyle(
                    color: gray,
                    //fontStyle: FontStyle.italic,
                    fontSize: 12),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25, top: 10),
            child: Text(description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                )),
          ),
          Row(
            children: categories,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.edit,
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
