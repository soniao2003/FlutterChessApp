import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/chessboard.dart';
import 'package:flutter_application_1/exercise.dart';
import 'package:flutter_application_1/exercises.dart';
import 'exercises.dart';
import 'chessboard_page.dart';

class ExcercisePage extends StatefulWidget {
  final int exerciseIndex; 

  const ExcercisePage({required this.exerciseIndex});


  @override
  State<ExcercisePage> createState() => _ExcercisePageState();
}

class _ExcercisePageState extends State<ExcercisePage> {

  changeDone(){
    setState(() {
      if (exercises[widget.exerciseIndex].done==false){
          exercises[widget.exerciseIndex].done=true;
      }
      else{
        exercises[widget.exerciseIndex].done=false;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.exerciseIndex);
    final int new_index = widget.exerciseIndex+1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Zadanie '+ new_index.toString(), style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 255, 206, 151),
        
      ),
      body: Center( 
        child: Column(mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[
          Container(height:400, width:400, 
          child:MyChessBoard(fen: exercises[widget.exerciseIndex].fen)), 
          Padding(padding: EdgeInsets.all(30), 
          child: Text('Opis zadania: '+exercises[widget.exerciseIndex].description)), 
          Padding(padding: EdgeInsets.all(30), 
          child: Text('fen: '+exercises[widget.exerciseIndex].fen)),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Text('wykonane:'),
          Checkbox(value: exercises[widget.exerciseIndex].done,
           onChanged: (value) { changeDone();}
           )
           ]
           )
        ]
           )
      )
           );

  }
}