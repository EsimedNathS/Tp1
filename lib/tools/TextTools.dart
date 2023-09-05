import 'dart:io';
import 'package:Tp1/tools/FileReader.dart';


readWord(FileReader reader){
  String finalWord = '';
  while (!reader.isEndOfFile()) {
    var current = reader.readNext();
    int countSpace = 0;
    while ((current != ' ') && (current != ',') && (current != ';') && (current != ':') && (current != '.') && (current != '\n')){
      countSpace = countSpace + 1;
      finalWord = finalWord + current;
      if (reader.last == -1){
        break;
      }
      current = reader.readNext();
    }
    if (countSpace > 0){
      return finalWord;
    }
  }
  return null;
}