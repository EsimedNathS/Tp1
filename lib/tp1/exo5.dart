import 'package:Tp1/tools/FileReader.dart';
import 'package:Tp1/tools/TextTools.dart';

List<String> read5Words(FileReader reader){
  List<String> list = [];
  list.add(readWord(reader));
  String current = reader.readNext();
  for (int i = 0; i<5 ; i++) {
    while (readWord(reader) != null) {
      print(b);
      if (reader.isEndOfFile()){
        print('a');
        return list;
      }
      current = reader.readNext();
    }
    list.add(readWord(reader));
    current = reader.readNext();
  }
  return list;
}