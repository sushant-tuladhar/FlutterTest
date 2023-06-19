import 'package:flutter/material.dart';
import 'package:initial_fluttere2e/page1.dart';

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
    body:  Center(
     child: GridView.count(crossAxisCount: 1,
      children: const <Widget>[
        Card(color:Colors.amberAccent, child: Image(image: NetworkImage('https://images.unsplash.com/photo-1532693322450-2cb5c511067d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2788&q=80'))),
        Card(color: Colors.cyan, child: Image(image: AssetImage('assets/photo.avif'))),
        Card(color: Colors.indigo, child: Image(image: AssetImage('assets/pic2.avif')),),
        Card(color: Colors.deepOrange,child: Image(image: AssetImage('assets/pic3.avif')),),
        Card(color: Colors.black12,child: Image(image: AssetImage('assets/pic4.avif')),),
        Card(color:Colors.amber,child: Icon(Icons.airport_shuttle),)
      ],
     ),
    ),floatingActionButton: FloatingActionButton(
      onPressed: () async {
        await showDialog(context: context, builder: (context)=> AlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Please click on the go back button'),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageNext()));
            }, child: const Text('Confirm')),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            key:const Key('Exit'),
            child: const Text('Exit'))
          ],
        ));
      } ,
      tooltip: 'Add_Button',
      child: const Icon(Icons.add),
    ),);
  }
}
