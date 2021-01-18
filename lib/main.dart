import 'package:flutter/material.dart';

void main() {
  runApp(DrawerScreen());
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key key}) : super(key: key);
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomepage(title: appTitle),
    );
  }
}

class MyHomepage extends StatelessWidget {
  final String title;
  MyHomepage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Text(
          'My Page',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(color: Colors.blue[400]),
            ),
            ListTile(
              title: Text(
                'Menu 1',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Menu 2',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Menu 3',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
