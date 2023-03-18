import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        //return CupertinoAlertDialog for apple style app
        return AlertDialog(
          backgroundColor: Colors.pink[300],
          title: Text('Title'),
          content: Text('Content.... Info'),
          actions: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //do something
              },
              child: Text('Ok'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange[200],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
