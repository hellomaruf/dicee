import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context){

    return Center(
      child: Row(
        children: <Widget>[
          myButton(leftDiceNumber ,(){
            setState(() {
              leftDiceNumber = Random().nextInt(6)+1;

            });
          }),

          myButton(rightDiceNumber,(){
            setState(() {
              rightDiceNumber = Random().nextInt(6)+1;

            });
          } ),
        ],
      ),
    );
  }


  Widget myButton(int diceNumber,VoidCallback onTap ){
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image(image: AssetImage('images/diecc-$diceNumber.png'),
            width: 200.0,
          ),
        ),
      ),
    );
  }
}
