import 'package:Tp1/tools/FileReader.dart';

int countWords(FileReader reader) {
  int counter = 0;
  while (!reader.isEndOfFile()) {
    var current = reader.readNext();
    int countSpace = 0;
    while ((current != ' ') && (current != ',') && (current != ';') && (current != ':') && (current != '.') && (current != '\n')){
      countSpace = countSpace + 1;
      if (reader.last == -1){
        break;
      }
      current = reader.readNext();
    }
    if (countSpace > 0){
      counter++;
    }
  }
  return counter;
}

exo4(String filename) {
  print(countWords(FileReader(filename)));
}