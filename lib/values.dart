//grid dimensions
import 'package:flutter/material.dart';

int rowLength = 10;
int colLength = 15;

enum Direction{
  left, 
  right,
  down,
}

enum Tetriso{
  L,
  J,
  I,
  O,
  S,
  Z,
  T,

/*

  o
  o
  o o

    o
    o
    o
  o o

  o
  o
  o
  o

  o o
  o o

    o o
  o o

  o o
    o o

  o
  o o
  o
  
*/
}

const Map<Tetriso, Color> tetrisoColors = {
  Tetriso.L: Colors.yellow,
  Tetriso.J: Colors.blue,
  Tetriso.I: Colors.purple,
  Tetriso.O: Colors.orange,
  Tetriso.S: Colors.green,
  Tetriso.Z: Colors.red,
  Tetriso.T: Colors.deepPurpleAccent
};