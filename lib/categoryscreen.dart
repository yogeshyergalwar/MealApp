import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categoryscreen extends StatefulWidget {
  const categoryscreen({super.key});

  @override
  State<categoryscreen> createState() => _categoryscreenState();
}

class _categoryscreenState extends State<categoryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('meals App'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
         children: [
           Text('1',style: TextStyle(color: Colors.white),),
           Text('1',style: TextStyle(color: Colors.white),),
           Text('1',style: TextStyle(color: Colors.white),),
           Text('1',style: TextStyle(color: Colors.white),),
           Text('1',style: TextStyle(color: Colors.white),),Text('1',style: TextStyle(color: Colors.white),),

         ],
      ),
    );
  }
}
