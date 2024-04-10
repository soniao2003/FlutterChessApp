import 'package:flutter/material.dart';
import 'package:simple_chess_board/models/piece_type.dart';
import 'package:simple_chess_board/models/short_move.dart';
import 'package:simple_chess_board/widgets/chessboard.dart';

import 'chessboard.dart';

class MyChessBoardPage extends StatelessWidget {
  final String fen;
  const MyChessBoardPage({required this.fen, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chess Board"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: MyChessBoard(fen: fen),
          ),
        ),
      ),
    );
  }
}