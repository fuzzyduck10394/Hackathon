import 'package:flutter/material.dart';
import 'colors.dart';

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/userMenu');
                    // Tutaj możesz umieścić logikę dla pierwszego przycisku.
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    //  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(25, 265, 25, 35 )), // Zwiększa padding przycisku
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage('assets/images/ludzik.png'),
                        width: 120,
                        height: 120,
                      ),
                      Text(
                        'Wolontariusz',
                        style: TextStyle(
                          fontSize: 24.0, // Zwiększa rozmiar czcionki
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/adminMenu');
                    // Tutaj możesz umieścić logikę dla pierwszego przycisku.
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    //  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(25, 265, 25, 35 )), // Zwiększa padding przycisku
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage('assets/images/ludzikikilka.png'),
                        width: 120,
                        height: 120,
                      ),
                      Text(
                        'Organizacja',
                        style: TextStyle(
                          fontSize: 24.0, // Zwiększa rozmiar czcionki
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // SizedBox(width: 16.0), // Dodaje odstęp między przyciskami
            ],
          ),
        ),
      ),
    );
  }
}
