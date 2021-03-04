import 'package:flutter/material.dart';
import 'package:learn_flutter_app/pages/home.dart';
import 'package:learn_flutter_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/home': (context) => Home(),
      '/': (context) => Loading(),
    }
  ));
}


