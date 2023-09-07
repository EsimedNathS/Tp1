import 'package:Tp1/tools/TextTools.dart';

exo6(String textes) async {
   int counter = 0;
  await walkDirectory(textes, (filename) {
      print(filename);
      counter++;
  } );
  print( 'Le nombre de fichiers est: $counter' );
}


