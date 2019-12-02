import 'package:adotapet/pages/login.dart';
import 'package:adotapet/pages/new.user.dart';
import 'package:flutter/material.dart';

void main() => runApp(AdotaPet());

class AdotaPet extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    NewUserPage.tag: (context) => NewUserPage(),
  };

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'AdotaPet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, color: Colors.blue),
          body1: TextStyle(fontSize: 14),
        )
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

}
  
