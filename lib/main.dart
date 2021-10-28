import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(LaadhuuApp());

class LaadhuuApp extends StatefulWidget {
  LaadhuuApp({Key? key}) : super(key: key);

  @override
  State<LaadhuuApp> createState() => _LaadhuuAppState();
}

class _LaadhuuAppState extends State<LaadhuuApp> {
  int diceOne = 1;

  int diceTwo = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Laadhuu'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          elevation: 0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          diceOne = Random().nextInt(6) + 1;
                        });

                        print('Dice $diceOne tapped');
                      },
                      // String Interpolation
                      child: Image.asset('images/dice$diceOne.png')),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        diceTwo = Random().nextInt(6) + 1;
                        print('Dice $diceTwo Tapped');
                        setState(() {});
                      },
                      child: Image.asset('images/dice$diceTwo.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
