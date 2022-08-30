import 'package:flutter/material.dart';
import 'package:trasitions_app/page2_page.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Hola mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
        child: Icon(Icons.access_time),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) =>
          const Page2Page()),
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        //* Slide Transition
        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
        //       .animate(curveAnimation),
        //   child: child,
        // );

        //* Scale Transition
        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        //* Rotation Transition
        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        //* FadeIn Transition
        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );


        // Mix two transitions
        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
          child: FadeTransition(
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
