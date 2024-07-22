import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [CircleAvatar() ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},backgroundColor: Colors.teal,),
      ),
    );
  }
}
