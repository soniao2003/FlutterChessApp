import 'package:flutter/material.dart';

class Exercise {
  late String fen;
  late String description;
  late int level;
  bool done=false;

  Exercise( this.fen, this.description, this.level){
    this.fen=fen;
    this.description=description;
    this.level=level;
  }

}