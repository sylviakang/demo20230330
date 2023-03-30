import 'package:flutter/material.dart';

import 'main.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          centerTitle: true,
          title: Text('Sylvia\'s Card'),
        ),
        backgroundColor: Colors.teal,
        body: Container(),
        drawer: DrawerWidget(),
      ),
    );
  }
}
