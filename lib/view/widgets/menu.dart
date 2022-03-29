import 'package:flutter/material.dart';
import 'package:puzzle_game/view/widgets/time.dart';

import 'move.dart';
import 'resetbutton.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  final VoidCallback? reset;
  int move;
  int secondsPassed;
  // ignore: prefer_typing_uninitialized_variables
  var size;

  Menu({Key? key, this.reset, this.move = 0, this.secondsPassed = 0, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:size.height*0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ResetButton(reset: reset),
        Move(move: move,),
        Time(secondsPassed: secondsPassed)
      ],),
    );
  }
}