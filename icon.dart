import 'package:flutter/material.dart';
import 'package:flutter_application_1/single_excercise_page.dart';
import 'package:flutter_application_1/exercise.dart';
import 'package:flutter_application_1/exercises.dart';

class DifficultyIcon extends StatelessWidget {
  final int difficulty;
  const DifficultyIcon({required this.difficulty});

  getColor(){
    if (difficulty == 1)
  {
    return Colors.green;
  }
  else if (difficulty == 2){
    return Colors.orange;
  }
  else if (difficulty == 3){
    return Colors.red;
  }
  }


  @override
  Widget build(BuildContext context) {
    return Icon(Icons.circle, color: getColor());
  }
}