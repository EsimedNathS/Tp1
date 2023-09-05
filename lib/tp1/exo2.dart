import 'package:Tp1/tools/FileReader.dart';

String readFirstChar(FileReader mot) {
  return mot.readNext();
}

exo2(String fileName) {
  FileReader object = FileReader( fileName ) ;
  return readFirstChar(object);
}