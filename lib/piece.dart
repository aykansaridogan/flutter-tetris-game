
import 'dart:ui';

import 'package:mobiluygulama_1/board.dart';
import 'package:mobiluygulama_1/values.dart';

class Piece {
  Tetriso type;
  
  Piece({required this.type});

  List<int> position = [];

  Color get color{
    return tetrisoColors[type] ?? const Color(0xFFFFFFFF);
  }


  void initalizePiece(){
    switch (type){
      case Tetriso.L:
        position= [
          -26,-16,-6,-5,
        ];
        break;
      case Tetriso.J:
        position= [
          -25,-15,-5,-6,
        ];
        break;
      case Tetriso.I:
        position= [
          -4,-5,-6,-7,
        ];
        break;
      case Tetriso.O:
        position= [
          -15,-16,-5,-6,
        ];
        break;
      case Tetriso.S:
        position= [
          -15,-14,-6,-5,
        ];
        break;
      case Tetriso.Z:
        position= [
          -17,-16,-6,-5,
        ];
        break;
      case Tetriso.T:
        position= [
          -26,-16,-6,-15,
        ];
        break;
      
      default:
    }
  }

  //move
  void movePiece(Direction direction){
    switch (direction){
      case Direction.down:
        for (int i=0; i< position.length; i++){
          position[i] += rowLength;

        }
        break;
      case Direction.left:
        for (int i=0; i< position.length; i++){
          position[i] -= 1;
          
        }
        break;
      case Direction.right:
        for (int i=0; i< position.length; i++){
          position[i] += 1;
          
        }
        break;
      
      default:
      }
  }

  //rotate 
  int rotationState =1;
  void rotatePiece(){
    List<int> newPosition =[];

    switch (type) {
      case Tetriso.L:
        switch (rotationState){
          case 0:
          /*

            o
            o
            o o

          */

          newPosition = [
            position[1]-rowLength,
            position[1],
            position[1]+rowLength,
            position[1]+rowLength+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*
            
            0 0 0
            0

          */

          newPosition = [
            position[1]-1,
            position[1],
            position[1]+1,
            position[1]+rowLength-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*
            
            0 0
              0
              0

          */

          newPosition = [
            position[1]+rowLength,
            position[1],
            position[1]-rowLength,
            position[1]-rowLength-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*
            
                  0
            0  0  0

          */

          newPosition = [
            position[1]-rowLength+1,
            position[1],
            position[1]+1,
            position[1]-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;
          
        }
        case Tetriso.J:
        switch (rotationState){
          case 0:
          /*
            0
            0
          0 0

          */

          newPosition = [
            position[1]-rowLength,
            position[1],
            position[1]+rowLength,
            position[1]+rowLength-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*

            0
            0 0 0

          */

          newPosition = [
            position[1]-rowLength-1,
            position[1],
            position[1]-1,
            position[1]+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*
            
            0 0
            0
            0

          */

          newPosition = [
            position[1]+rowLength,
            position[1],
            position[1]-rowLength,
            position[1]-rowLength+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*

            0 0 0
                0

          */

          newPosition = [
            position[1]+1,
            position[1],
            position[1]-1,
            position[1]+rowLength+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;
          
        }
        break;
        case Tetriso.I:
        switch (rotationState){
          case 0:
          /*
            
            0 0 0 0

          */

          newPosition = [
            position[1]-1,
            position[1],
            position[1]+1,
            position[1]+2,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*

            0
            0
            0
            0

          */

          newPosition = [
            position[1]-rowLength,
            position[1],
            position[1]+rowLength,
            position[1]+2 * rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*
            
            0 0 0 0

          */

          newPosition = [
            position[1]+1,
            position[1],
            position[1]-1,
            position[1]-2,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*

            0
            0
            0
            0

          */

          newPosition = [
            position[1]+rowLength,
            position[1],
            position[1]-rowLength,
            position[1]- 2 *rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;
          
        }
        
        break;
        case Tetriso.O:
        switch (rotationState){
          case 0:
          /*
            
            0 0
            0 0

          */

          break;
        }
        
        break;

        case Tetriso.S:
        switch (rotationState){
          case 0:
          /*
            
            0 0
          0 0

          */

          newPosition = [
            position[1],
            position[1]+1,
            position[1]+rowLength-1,
            position[1]+rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*

            0
            0 0
              0

          */

          newPosition = [
            position[0]-rowLength,
            position[0],
            position[0]+1,
            position[0]+rowLength +1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*
            
            0 0
          0 0 

          */

          newPosition = [
            position[1],
            position[1]+1,
            position[1]+rowLength-1,
            position[1]+rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*

            0
            0 0
              0

          */

          newPosition = [
            position[0]-rowLength,
            position[0],
            position[0]+1,
            position[0]+ rowLength +1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          
          
        }
        break;
        case Tetriso.Z:
        switch (rotationState){
          case 0:
          /*
            
            0 0
              0 0

          */

          newPosition = [
            position[0]-2,
            position[1],
            position[2]+rowLength-1,
            position[3]+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*

              0
            0 0
            0

          */

          newPosition = [
            position[0]-rowLength + 2,
            position[1],
            position[2]-rowLength+1,
            position[3]-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*

          0 0  
            0 0

          */

          newPosition = [
            position[0]+rowLength - 2,
            position[1],
            position[2]+rowLength-1,
            position[3]+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*

              0
            0 0
            0 

          */

          newPosition = [
            position[0]-rowLength + 2,
            position[1],
            position[2]-rowLength+1,
            position[3]-1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          
          
        }
        break;
        case Tetriso.T:
        switch (rotationState){
          case 0:
          /*
            
            0
            0 0
            0

          */

          newPosition = [
            position[2]-rowLength,
            position[2],
            position[2]+1,
            position[2]+rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 1:
          /*

          0 0 0
            0

          */

          newPosition = [
            position[1]-1,
            position[1],
            position[1]+1,
            position[1]+rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 2:
          /*

              0
            0 0
              0

          */

          newPosition = [
            position[1]- rowLength,
            position[1]-1,
            position[1],
            position[1]+rowLength,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          case 3:
          /*

              0
            0 0 0

          */

          newPosition = [
            position[2]-rowLength,
            position[2]-1,
            position[2],
            position[2]+1,
          ];
          if (piecePositionIsValid(newPosition)){
            position = newPosition;
            rotationState = (rotationState+1)%4;
          }
          break;

          
          
        }
        break;
      default:
    }

  }

  bool positionIsValid(int position){
    int row= (position/rowLength).floor();
    int col= position%rowLength;

    if (row<0 || col <0 || gameBoard[row][col]!=null){
      return false;
    }
    else {
      return true;
    }
  }

  bool piecePositionIsValid(List<int> piecePosition){
    bool firstColOccupied = false;
    bool lastColOccupied =false;

    for (int pos in piecePosition){
      if (!positionIsValid(pos)){
        return true;
      }

      int col = pos % rowLength;

      if (col ==0){
        firstColOccupied = true;
      }
      if ( col == rowLength-1){
        lastColOccupied = true;
      }
    }

    return !(firstColOccupied && lastColOccupied);
  }


}