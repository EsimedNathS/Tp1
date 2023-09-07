import 'package:Tp1/searchengine/Tree.dart';
import 'package:Tp1/tools/TextTools.dart';
import 'package:Tp1/tools/FileReader.dart';

exo1(String filename){
  var reader = FileReader(filename);
  while (!reader.isEndOfFile()) {
    current = readWord(reader);
    insertInTree(tree,current);
    print(current);
  }
}