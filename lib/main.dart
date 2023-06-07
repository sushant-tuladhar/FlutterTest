import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      title: const Text('ECommerce'),
      titleTextStyle: const TextStyle(
        fontFamily: 'IndieFlower',
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
      backgroundColor: Colors.deepOrange,
    ),
    body:const Center(
      child: Text('Hello world !!!',
      style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 3.0,
        decorationStyle: TextDecorationStyle.dashed,
        fontFamily: 'IndieFlower'
       ),),
    ),floatingActionButton: FloatingActionButton(
      onPressed: () => {debugPrint('Hello check and works fine')},
      tooltip: 'Test',
      backgroundColor: Colors.deepOrange,
      child: const Icon(Icons.add),
    ),);
  }
}
