import 'package:Tp1/tools/FileReader.dart';
import 'package:Tp1/tools/TextTools.dart';

List<String> read5Words(FileReader reader){
  List<String> list = [];
  for (int i = 0; i<5 ; i++) {
    String test=readWord(reader);
    if (test != '') {
      list.add(test);
      if (reader.last == -1){
        return list;
      }
    }
  }
  return list;
}