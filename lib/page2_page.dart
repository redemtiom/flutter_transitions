import 'package:flutter/material.dart';


class Page2Page extends StatelessWidget {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}