import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade800,
        title: const Text(
          'I Am Rich',
          style: TextStyle(fontFamily: 'Climate Crisis', fontSize: 25.0),
        ),
      ),
      body: Center(
        child: Image(
          fit: BoxFit.contain,
          width: 400.0,
          image: AssetImage('images/diamond.png'),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Your Name'),
            accountEmail: Text('Your Email'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSae1YVVf2fG8ow4Jlu9c1_4enLmndF9J4lqTyIsnDPTHFLkabY1pxjzAX9Y8xXC3K9YWc&usqp=CAU'),
            ),
            onDetailsPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              'Mi Card',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Page1();
              }));
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return NewPage();
              // }));
            },
          ),
          ListTile(
            leading: Icon(Icons.crop_rotate),
            title: Text(
              'Dicee',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Page2();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_baseball),
            title: Text(
              'Magic 8 Ball',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Page3();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.piano_rounded),
            title: Text(
              'Xylophone',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_sharp),
            title: Text(
              'Quizzler',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
