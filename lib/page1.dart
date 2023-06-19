
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
            testReturn(context)
          },
          icon:const Icon(Icons.arrow_back),
          tooltip: 'BackButton',
        ),
        ),
        
    );
  }

  void testReturn(context){
    Navigator.pop(context);
  }
}