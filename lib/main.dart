import 'package:flutter/material.dart';
import 'user.dart';
import 'menuUser.dart';
import 'colors.dart';

void main() {

  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'Gabarito',
        primaryColor: black,
    ),


    initialRoute: '/userMenu',
    routes: {
      '/user': (context) => UserProfile(),
      '/userMenu':(context) => MenuUser(),
    },
  ));              
}

