import '/Users/nathan/Project de Esimed/Tp1/test/Tp1_test.dart' as test;
import '../lib/tp1/exo1.dart' as exo1;
import 'package:Tp1/tp1/exo2.dart' as exo2;
import 'package:Tp1/tp1/exo3.dart' as exo3;
import 'package:Tp1/tp1/exo4.dart' as exo4;
import 'package:Tp1/tp1/exo5.dart' as exo5;
import 'package:Tp1/tools/TextTools.dart';
import 'package:Tp1/tools/FileReader.dart';


void main(List<String> arguments) {
  /*exo1.exo1();
  print(exo2.exo2(arguments[0]));
  print(exo3.exo3(arguments[0]));
  print(exo4.exo4(arguments[0])); */
  print(exo5.read5Words(FileReader.fromString("mot1,.mot2, mot3, mot4")));
  print(readWord(FileReader.fromString("One, deux")));
}
