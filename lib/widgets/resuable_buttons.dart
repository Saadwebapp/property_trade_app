import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableButtons extends StatelessWidget {
  final Color color ;
  final Color txtcolor ;
  final int height;
  final int width;
  final String txt;
  final double border_size;
  const ReusableButtons({Key? key,   this.color = const Color (0xff006dff), required this.txt,  this.txtcolor= Colors.white,  this.height = 15,  this.width= 1, required this.border_size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height/height,
      width: MediaQuery.of(context).size.width/width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border_size),
        color: color,

        ),
      child: Text(
        txt,
        style: TextStyle(
          color: txtcolor
        ),
      ),
    );
  }
}
