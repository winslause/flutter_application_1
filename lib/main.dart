import 'package:flutter/material.dart';

// //first screen push() --> second screen pop() <-- first screen

// void main() {
//   runApp(const MaterialApp(title: "App", home: ProfilePage()));
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

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: "app",
//       home: MyHomePage(),
//     );
//   }
// }

// //my homepage widget
// //scaffold:
// //        appbar, body: center, drawer,
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: const Center(child: Text("My home page")),
//       drawer: Drawer(
//           child: ListView(children: [
//         const SizedBox(
//             height: 60.0,
//             child: const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text("Drawer head"),
//             )),
//         ListTile(
//           title: const Text("Item1"),
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ItemOnePage(),
//                 ));
//           },
//         ),
//         ListTile(
//           title: const Text("Item2"),
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ItemTwoPage(),
//                 ));
//           },
//         )
//       ])),
//     );
//   }
// }

// class ItemOnePage extends StatelessWidget {
//   const ItemOnePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("I am page 1")),
//         body: Center(child: const Text("Item one Screen"),));
//   }
// }

// class ItemTwoPage extends StatelessWidget {
//   const ItemTwoPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("I am page 2")),
//         body: Center(
//           child: const Text("Item two Screen"),
//         ));
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Profile")),
//         body: Center(child: const Text("Profile Screen"),),
//         drawer: buildDrawer(context));
//   }
// }

// class CareerPage extends StatelessWidget {
//   const CareerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Career")),
//         body: Center(child: const Text("Career Screen"),),
//         drawer: buildDrawer(context));
//   }
// }

// class ProjectsPage extends StatelessWidget {
//   const ProjectsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Projects")),
//         body: Center(child: const Text("Projects Screen"),),
//         drawer: buildDrawer(context));
//   }
// }

// Drawer buildDrawer(BuildContext context) {
//   return Drawer(
//       child: ListView(children: [
//     const SizedBox(
//         height: 60.0,
//         child: DrawerHeader(
//           decoration: BoxDecoration(color: Colors.blue),
//           child: Text("Drawer head"),
//         )),
//     ListTile(
//       title: const Text("Profile"),
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ProfilePage()));
//       },
//     ),
//     ListTile(
//       title: const Text("Career"),
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => CareerPage()));
//       },
//     ),
//     ListTile(
//       title: const Text("Projects"),
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ProjectsPage()));
//       },
//     )
//   ]));
// }

//TO DO
class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

List<Todo> _todos = [
  Todo("Task one", "go to school"),
  Todo("Task two", "GO TO CHURCH")
];

void main() {
  runApp(MaterialApp(title: 'App', home: TodosScreen(todos: _todos)));
}

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  _TodosSreenState createState() => _TodosSreenState();
}

class _TodosSreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Tasks")),
        body: ListView.builder(
            itemCount: _todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(_todos[index].title),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(todo: _todos[index])));
                  });
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final Todo? newTodo = await showDialog<Todo>(
                context: context,
                builder: (BuildContext context) {
                  String? title;
                  String? description;

                  return AlertDialog(
                    title: const Text("Create New Task"),
                    content: Column(
                      children: <Widget>[
                        TextField(
                          onChanged: (value) => title = value,
                          decoration: const InputDecoration(labelText: "Title"),
                        ),
                        TextField(
                          onChanged: (value) => description = value,
                          decoration:
                              const InputDecoration(labelText: "Descripton"),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: const Text("Save"),
                        onPressed: () {
                          if (title != null && description != null) {
                            Navigator.pop(context, Todo(title!, description!));
                          }
                        },
                      )
                    ],
                  );
                });

            if (newTodo != null) {
              setState(() {
                _todos.add(newTodo);
              });
            }
          },
          child: const Icon(Icons.add),
        ));
  }
}

//details screen
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
