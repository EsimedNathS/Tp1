import 'package:Tp1/tools/FileReader.dart';

int countAl(FileReader reader) {
  var count = 0;
  var foundA = false;
  while (!reader.isEndOfFile()) {
    final c = reader.readNext();
    if (foundA && (c == 'l')) {
      count = count + 1;
    }
    foundA = c == 'a';
  }
  return count;
}

exo3(String filename) {
  print(countAl(FileReader(filename)));
}
