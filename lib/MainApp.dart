library main_app;

import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = 'So What Up';
    var home = FirstPage(title);
    return MaterialApp(
      title: title,
      home: home,
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  String nav_title;
  FirstPage(this.nav_title);

  Widget build(BuildContext context) {
    double Heigth = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(this.nav_title),
        elevation: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        width: Width / 2,
        height: Heigth / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Text('aaaa'), Text('${Heigth}'), Text('${Width}')],
        ),
      ),
    );
  }
}
