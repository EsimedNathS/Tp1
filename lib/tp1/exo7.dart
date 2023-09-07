import 'package:Tp1/tools/TextTools.dart';

exo7(String path, String word){
  print('Recherche de "$word" dans "$path"...');
  search('$path', '$word').then((list) {
    list.forEach((element) => print(element));
  });;
}