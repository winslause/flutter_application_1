import 'package:flutter/material.dart';

// //first screen push() --> second screen pop() <-- first screen

// void main() {
//   runApp(const MaterialApp(title: "App", home: FirstScreen()));
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("My first app")),
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const SecondScreen()));
//               },
//               child: const Text("Go to screen two"))),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Second Screen")),
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text("Go to screen one"))),
//     );
//   }
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "app",
      home: MyHomePage(),
    );
  }
}

//my homepage widget
//scaffold:
//        appbar, body: center, drawer,
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: const Center(child: Text("My home page")),
      drawer: Drawer(
          child: ListView(children: [
        const SizedBox(
            height: 60.0,
            child: const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer head"),
            )),
        ListTile(
          title: const Text("Item1"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemOnePage(),
                ));
          },
        ),
        ListTile(
          title: const Text("Item2"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemTwoPage(),
                ));
          },
        )
      ])),
    );
  }
}

class ItemOnePage extends StatelessWidget {
  const ItemOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("I am page 1")),
        body: Center(child: const Text("Item one Screen"),));
  }
}

class ItemTwoPage extends StatelessWidget {
  const ItemTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("I am page 2")),
        body: Center(
          child: const Text("Item two Screen"),
        ));
  }
}

