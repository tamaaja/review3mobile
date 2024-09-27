import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'praktikum mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
        ),
        children: [
          Container(
            width: 100,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/download.png")
                        ),
                   ),
              ),
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.green,
          ),
                    Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 255, 251, 26),
          ),
                    Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 255, 131, 156),
          ),
                    Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 152, 76, 175),
          ),
                              Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 140, 255, 182),
          ),
                    Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 0, 255, 217),
          ),
                    Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.only(bottom: 10),
            color: const Color.fromARGB(255, 255, 145, 0),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}