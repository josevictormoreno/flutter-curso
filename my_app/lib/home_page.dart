import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nav bar'),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              for (var i = 0; i < 10; i++)
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: const EdgeInsets.all(5),
                  color: Colors.blue,
                )
            ],
          )),
        ));
  }
}
