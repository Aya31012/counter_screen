import 'dart:js_interop';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0 ;

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Counter",textAlign: TextAlign.center,style: TextStyle(fontSize: 50, color: Colors.black, ),), backgroundColor: Colors.lightBlueAccent, centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                count++;
                setState(() { });
              },
                icon: Icon(Icons.add,size: 100,),),
              Text(
                '$count',
                style: const TextStyle(fontSize: 100,color: Colors.black),),
              IconButton(onPressed: (){
                count--;
                setState(() { });
              },
                icon: Icon(Icons.remove,size: 100,),),

            ],

          ),
        ),
      ),
      backgroundColor: Colors.grey [200],
    );
  }
}
