import 'dart:io';
import 'package:Tp1/tools/FileReader.dart';


readWord(FileReader reader){
  String finalWord = '';
  while (!reader.isEndOfFile()) {
    var current = reader.readNext();
    int countSpace = 0;
    while ((current != ' ') && (current != ',') && (current != ';') && (current != ':') && (current != '.') && (current != '\n')){
      countSpace++;
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
  return '';
}


walkDirectory(String path, void action(String filename)) async{
  List<String> nomsDesFichiers = await Directory(path)
                        .list(recursive:true, followLinks: false)
                        .where((event) => event.statSync().type == FileSystemEntityType.file)
                        .where((event) => event.path.endsWith('.txt'))
                        .map((event) => event.path).toList();
                        nomsDesFichiers.sort();
                        nomsDesFichiers.forEach((element) => action(element) );
}

int countWord(FileReader reader, String word){
  int counter = 0;
  while (!reader.isEndOfFile()) {
    if (readWord(reader) == word){
      counter++;
    }
  }
  return counter;
}

class SearchResult {
  String filename='';
  int? count;

  @override
  toString(){
    return filename;
  }

  @override
  bool operator ==(Object other) =>
     other == filename;

  Future<List<SearchResult>> search(String repertory, String word){


  }

}

