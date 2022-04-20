import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = 3;
    return Center(
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                onPressed: (){
                  print('i clicked on the left button');
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Image.asset('images/dice$leftDiceNumber.png')
              ),
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  print('clicked on the right button');
                },
                  child: Image.asset('images/dice2.png')
              ),
          ),
        ],
      ),
    );
  }
}
// Expanded(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: TextButton(
// child: Image.asset("images/dice1.png"),
// ),
// ),
// ),