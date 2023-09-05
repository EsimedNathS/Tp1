import 'package:Tp1/tp1/exo1.dart';
import 'package:Tp1/tp1/exo2.dart';
import 'package:Tp1/tools/FileReader.dart' ;
import 'package:test/test.dart';

main() {
  test('exo1', () {
    expect(() => exo1(), prints('Hello World!\n'));
  });
  test('exo2', () {
    expect(readFirstChar(FileReader("BellumCivile.txt")), "a");
    expect(readFirstChar(FileReader.fromString("Hello")), "H");
  });
}
