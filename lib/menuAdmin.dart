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

          title: Text(
            'Płock sercem - Admin',
            style: TextStyle(color: Colors.white)
          ),

          backgroundColor: orange,
        ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),

          child: Column(
            children: [
            ],           

          ),

        ),
        floatingActionButton: SizedBox(
          width: 90,
          height: 90,
          child: FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context,'/addContentAdmin'),
            backgroundColor: orange,
            child: Icon(Icons.add, size:40, color: Colors.white),
          ),
        ),

    );
  }
}




