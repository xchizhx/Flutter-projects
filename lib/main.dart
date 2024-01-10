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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index){
          return Container(
            height: 100,
            width: double.infinity,
            child: OutlinedButton(onPressed: (){
              if (index % 2 == 0){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Text("jopa"),
                    actions: [OutlinedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("OK"))],
                  );
                });
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("okey"), action: SnackBarAction(label: "", onPressed: (){
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                }),
                ));
              }
            }, child: Text("")),
          );


        },
        ),
      );
  }
}
