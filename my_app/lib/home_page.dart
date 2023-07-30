import 'package:flutter/material.dart';
import 'package:my_app/home_controller.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nav bar'),
//       ),
//       body: Center(
//         child: Text(
//           'Numero: ${controller.value}',
//           style: const TextStyle(fontSize: 35),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

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
        child: Text(
          'Numero: ${counter}',
          style: const TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
