import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.light(),
      //theme: ThemeData.dark(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      title: "What should I eat today",
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "What Should I Eat Today",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
            //backgroundColor: Colors.orange,
          ),
          body: MealScreen()),
    );
  }
}

class MealScreen extends StatefulWidget {
  // variables
  @override
  _MealScreenState createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  var corbaIsimleri = [
    "Mercimek Çorbası",
    "Tarhana Çorbası",
    "Tavuksuyu Çorbası",
    "Düğün Çorbası",
    "Yoğurt Çorbası"
  ];
  var yemekIsimleri = [
    "Karnıyarık",
    "Mantı",
    "Kuru Fasulye",
    "İçli Köfte",
    "Izgara Balık",
  ];
  var tatliIsimleri = [
    "Kadayıf",
    "Baklava",
    "Sütlaç",
    "Kazandibi",
    "Dondurma",
  ];

  // ignore: missing_return
  int changeMealNumber() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                color: Colors.white,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  changeMealNumber();
                },
                child: Image.asset("assets/images/corba_${corbaNo}.jpg"),
              ),
            ),
          ),
          Text("${corbaIsimleri[corbaNo - 1]}"),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                color: Colors.white,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  changeMealNumber();
                },
                child: Image.asset("assets/images/yemek_${yemekNo}.jpg"),
              ),
            ),
          ),
          Text("${yemekIsimleri[yemekNo - 1]}"),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                color: Colors.white,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  changeMealNumber();
                },
                child: Image.asset("assets/images/tatli_${tatliNo}.jpg"),
              ),
            ),
          ),
          Text("${tatliIsimleri[tatliNo - 1]}"),
        ],
      ),
    );
  }
}
