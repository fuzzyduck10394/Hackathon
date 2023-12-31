import 'package:flutter/material.dart';
import 'user.dart';
import 'menuUser.dart';
import 'menuAdmin.dart';
import 'colors.dart';
import 'addContent.dart';
import 'choice.dart';
void main() {

  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'Gabarito',
        primaryColor: black,
    ),


    initialRoute: '/choice',

    routes: {
      '/user': (context) => UserProfile(),
      '/userMenu':(context) => MenuUser(),
      '/adminMenu': (context) => MenuAdmin(),
      '/addContentAdmin':(context) => AddContent(),
      '/choice':(context) => Choice(),
    },
  ));              
}

