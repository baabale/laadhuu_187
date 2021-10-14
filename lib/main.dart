import 'package:flutter/material.dart';

void main() => runApp(LaadhuuApp());

class LaadhuuApp extends StatelessWidget {
  LaadhuuApp({Key? key}) : super(key: key);

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
                        print('Dice $diceOne tapped');
                      },
                      // String Interpolation
                      child: Image.asset('images/dice$diceOne.png')),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        print('Dice $diceTwo Tapped');
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
