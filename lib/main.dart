// @dart=2.9
import 'package:conversor_moedas_curso/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const requisita_api =
    "https://api.hgbrasil.com/finance?format=json&key=6cabb965";

void main() async {
  
 print(await getData());
  runApp(MaterialApp(
    home: HomePage(),
      theme: ThemeData(
      hintColor: Colors.amber,
      primaryColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        hintStyle: TextStyle(color: Colors.amber),
      )),
));
  
}

Future<Map> getData() async {
  http.Response response = await http.get(requisita_api);
  return json.decode(response.body);
}