import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: myApp(),
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBar> _item;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Demo'),
        actions: [Icon(Icons.thumb_up, color: Colors.red)
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Card(
          elevation: 50,
          borderOnForeground: true,
          color: Colors.orangeAccent,
          shadowColor: Colors.blue,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue, size: 20),
                title: Text(
                  'Mon compte',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Rodrigue',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(height: 20, color: Colors.black),
              ListTile(
                leading: Icon(Icons.password, color: Colors.blue, size: 20),
                title: Text(
                  'Mot de passe',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Password',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(
                height: 20,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue, size: 20),
                title: Text(
                  'Mon Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Email',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              ButtonTheme(
                  child: ButtonBar(
                children: [
                  FloatingActionButton(onPressed:(){}, child: Text('Video')),
                  FloatingActionButton(onPressed:(){}, child: Text('SMS'))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
