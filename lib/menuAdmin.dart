import 'package:flutter/material.dart';
import 'colors.dart';
import 'menuUser.dart';

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

          title: TextButton(
            onPressed: () => Navigator.popAndPushNamed(context, '/choice'),
            child: Text(
              'Płock sercem - Admin',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize:21)
            ),

          ),

          backgroundColor: orange,
        ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),

          child: Column(
            children: [
              SizedBox(height: 20,),
              Event('Big Festivalowski', 'pomoz w epickiej akcji', '22.22', [category('zwierzeta')])
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




