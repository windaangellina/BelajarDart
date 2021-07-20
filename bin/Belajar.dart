import 'package:Belajar/Belajar.dart' as Belajar;
import 'dart:io';

void main(List<String> arguments) {
  print('Hello world: ${Belajar.calculate()}!');

  // comment
  /*
  * multiline comments
  * */

  // dynamic variable with type inference
  var dynamicVariable;
  dynamicVariable = 1;
  dynamicVariable = 'bebas ubah isinya';
  print("isi dynamic var : $dynamicVariable");


  // variable yang dideklarasi tipenya
  stdout.write('name : ');
  String name = stdin.readLineSync().toString();
  stdout.write('age : ');
  int age = int.parse(stdin.readLineSync().toString());
  print("hi! i'm $name and i'm $age years old");

  // NUMBERS
  // String -> int
  var eleven = int.parse('11');
  // String -> double
  var elevenPointTwo = double.parse('11.2');
  // int -> String
  var elevenAsString = 11.toString();
  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'

  // STRING
  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";
  print('"What do you think of Dart?" he asked');
  print('"I think it\'s great!" I answered confidently');
  print("Windows path: C:\\Program Files\\Dart"); //Windows path: C:\Program Files\Dart
  // r -> menandakan raw string
  print(r'Dia baru saja membeli komputer seharga $1,000.00');
  // unicode hati
  print('Hi \u2665');


  // OPERATORS
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2


  // TRY CATCH
  // finally -> akan tetap dijalankan tanpa mempedulikan hasil try catch
  try {
    var a = 7;
    var b = 2;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}
