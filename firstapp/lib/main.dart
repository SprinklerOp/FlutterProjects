import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //verticalDirection: VerticalDirection.up,
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: 
          [
             Container(
                width: 300,
                height: 100,
                color: Colors.teal,
          ),
          Container(
                width: 300,
                height: 100,
                color: Colors.orange,
          ),
          Container(
                width: 300,
                height: 100,
                color: Colors.blue,
          )
           ],
          ),
        ),
      ),
    );
  }
}
