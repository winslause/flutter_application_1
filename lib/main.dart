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
// class Todo {
//   final String title;
//   final String description;

//   const Todo(this.title, this.description);
// }

// List<Todo> _todos = [
//   Todo("Task one", "go to school"),
//   Todo("Task two", "GO TO CHURCH")
// ];

// void main() {
//   runApp(MaterialApp(title: 'App', home: TodosScreen(todos: _todos)));
// }

// class TodosScreen extends StatefulWidget {
//   const TodosScreen({Key? key, required this.todos}) : super(key: key);

//   final List<Todo> todos;

//   @override
//   _TodosSreenState createState() => _TodosSreenState();
// }

// class _TodosSreenState extends State<TodosScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("My Tasks")),
//         body: ListView.builder(
//             itemCount: _todos.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                   title: Text(_todos[index].title),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 DetailScreen(todo: _todos[index])));
//                   });
//             }),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () async {
//             final Todo? newTodo = await showDialog<Todo>(
//                 context: context,
//                 builder: (BuildContext context) {
//                   String? title;
//                   String? description;

//                   return AlertDialog(
//                     title: const Text("Create New Task"),
//                     content: Column(
//                       children: <Widget>[
//                         TextField(
//                           onChanged: (value) => title = value,
//                           decoration: const InputDecoration(labelText: "Title"),
//                         ),
//                         TextField(
//                           onChanged: (value) => description = value,
//                           decoration:
//                               const InputDecoration(labelText: "Descripton"),
//                         ),
//                       ],
//                     ),
//                     actions: <Widget>[
//                       TextButton(
//                         child: const Text("Cancel"),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       TextButton(
//                         child: const Text("Save"),
//                         onPressed: () {
//                           if (title != null && description != null) {
//                             Navigator.pop(context, Todo(title!, description!));
//                           }
//                         },
//                       )
//                     ],
//                   );
//                 });

//             if (newTodo != null) {
//               setState(() {
//                 _todos.add(newTodo);
//               });
//             }
//           },
//           child: const Icon(Icons.add),
//         ));
//   }
// }

// //details screen
// class DetailScreen extends StatelessWidget {
//   const DetailScreen({Key? key, required this.todo}) : super(key: key);
//   final Todo todo;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(todo.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }


//display items on  a drawer




class Todo {
  final String title;
  final String description;
  final TimeOfDay time;
  final DateTime date;

  const Todo(this.title, this.description, this.time, this.date);
}

List<Todo> _todos = [
  Todo("Task one", "go to school", TimeOfDay.now(), DateTime.now()),
  Todo("Task two", "GO TO CHURCH", TimeOfDay.now(), DateTime.now()),
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
            subtitle: Text(_todos[index].time.format(context)),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _todos.removeAt(index);
                });
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: _todos[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Todo? newTodo = await showDialog<Todo>(
            context: context,
            builder: (BuildContext context) {
              String? title;
              String? description;
              TimeOfDay time = TimeOfDay.now();
              DateTime? date = DateTime.now();

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
                    ListTile(
                      title: const Text("Time"),
                      trailing: Text(time.format(context)),
                      onTap: () async {
                        final newTime = await showTimePicker(
                          context: context,
                          initialTime: time,
                        );
                        if (newTime != null) {
                          time = newTime;
                        }
                      },
                    ),
                    ListTile(
                      title: const Text("Date"),
                      trailing: Text(date.toString().split(' ')[0]),
                      onTap: () async {
                        final newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (newDate != null) {
                          date = newDate;
                        }
                      },
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
                      if (title != null &&
                          description != null &&
                          time != null &&
                          date != null) {
                        Navigator.pop(
                            context, Todo(title!, description!, time, date!));
                      }
                    },
                  )
                ],
              );
            },
          );

          if (newTodo != null) {
            setState(() {
              _todos.add(newTodo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Todo List",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            ...widget.todos.map(
              (todo) => ListTile(
                title: Text(todo.title),
                subtitle: Text(
                    "${todo.date.toString().split(' ')[0]} ${todo.time.format(context)}"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(todo: todo),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todo.description),
            const SizedBox(height: 16),
            Text("Time: ${todo.time.format(context)}"),
            Text("Date: ${todo.date.toString().split(' ')[0]}"),
          ],
        ),
      ),
    );
  }
}
