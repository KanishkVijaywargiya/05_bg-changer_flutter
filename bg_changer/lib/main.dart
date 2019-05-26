import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange,
    Colors.deepPurple,
    Color(0xFF53E0BC),
  ];
  var currentColor = Colors.white;
  var currentButtonColor = Colors.black;
  var currentTextColor = Colors.white;

  setRandomColor() {
    // var rnd = Random().nextInt(9);
    var rnd = Random().nextInt(colors.length);
    var rndButton = Random().nextInt(colors.length);
    var rndtext = Random().nextInt(colors.length);

    //call back function
    setState(() {
      currentColor = colors[rnd];
      currentButtonColor = colors[rndButton];
      currentTextColor = colors[rndtext];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: currentButtonColor,
          padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
          child: Text('Change it!', 
            style: TextStyle(
              color: currentTextColor,
              fontSize: 25, 
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
