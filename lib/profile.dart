import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Profile()
  ));
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('profile'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Center(
        child: Text('profile'),
      ),
    );
  }
}
