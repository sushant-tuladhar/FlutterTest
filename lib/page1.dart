
import 'package:flutter/material.dart';
class PageNext extends StatelessWidget{
  const PageNext({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Next page'),),
      body: Center(
        child: IconButton(
          onPressed: ()=>{
             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('icon is pressed')))},
          icon: Icon(Icons.arrow_back)
        ),
        ),
        
    );
  }

  void Return(context){
    Navigator.pop(context);
  }
}