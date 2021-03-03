import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first App!'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset('assets/food.jpeg'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
      ),
      backgroundColor: Colors.lightGreenAccent[400],
    );
  }
}

