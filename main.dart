import 'package:flutter/material.dart';
import 'package:flutter_application_1/single_excercise_page.dart';
import 'package:flutter_application_1/exercise.dart';
import 'package:flutter_application_1/exercises.dart';
import 'chessboard.dart';
import 'icon.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CHESS APP'),
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

  void _incrementCounter() {
    setState(() {
 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title, style: TextStyle(color: Colors.white))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
  child: ListView.builder(
    itemCount: exercises.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100, 
              child: MyChessBoard(
                fen: exercises[index].fen,
              ),
            ),
            SizedBox(width: 10),
            Expanded(child: Row(
              children: <Widget>[
                Text('OPIS: '+exercises[index].description),
                SizedBox(width: 20),
                DifficultyIcon(difficulty: exercises[index].level),
              ],
            ),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExcercisePage(exerciseIndex: index),
            ),
          );
        },
      );
    },
  ),
)

          ],
        ),
      ),
    );
  }
}
