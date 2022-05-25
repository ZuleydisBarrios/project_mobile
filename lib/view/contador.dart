import 'package:flutter/material.dart';

class Contador extends StatelessWidget{
  const Contador({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){  
    int count = 10;
    const sizeText = TextStyle(fontSize: 24, color: Colors.red);
    const color = Color.fromARGB(255, 8, 2, 185);
    return Scaffold(
      //backgroundColo
      appBar:AppBar(
        elevation:8.0,
        backgroundColor:color,
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Number push',
              style: TextStyle(fontSize: 24),
              ),
            Text(
              '$count',
              style: sizeText
              ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarms),
          onPressed:(){
            count++;
            showMessage();
          }));
  }

  void showMessage(){
    print('Hi, Again');
  }
}