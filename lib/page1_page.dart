import 'package:flutter/material.dart';


class Page1Page extends StatelessWidget {
  const Page1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}