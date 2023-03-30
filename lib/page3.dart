import 'package:flutter/material.dart';

import 'main.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
      ),
      body: Center(
          child: Text(
        '這是Page3.dart',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      )),
      drawer: DrawerWidget(),
    );
  }
}
