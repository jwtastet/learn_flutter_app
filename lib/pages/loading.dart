import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:learn_flutter_app/classes/Beverage.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<List<Beverage>> getBeverages() async {
    final response =
    await get(Uri.https('pure-taiga-78029.herokuapp.com', 'api/beverages'));

    if (response.statusCode == 200) {
      final List<Beverage> beverages = beverageFromJson(response.body);
      print(beverages[0].name);
      return beverages;
    } else {
      throw Exception('Failed to load Beverages');
    }
  }
  @override
  void initState() {
    super.initState();
    getBeverages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}