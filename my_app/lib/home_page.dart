import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final names = [
    'aninha',
    'tais',
    'talita',
    'robs',
    'zevs',
    'valen',
    'lucao',
    'mara',
    'uilson'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nav bar'),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                final name = names[index];
                return ListTile(
                  title: Text('${name}'),
                );
              }),
        ));
  }
}
