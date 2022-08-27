import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage() ,
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     appBar: AppBar(
      title: Text('Homepage'),
     ),
     body: Center(
      child: Text("Homepage",
      style: TextStyle(fontSize: 44),),
     ),

    );
  }
}