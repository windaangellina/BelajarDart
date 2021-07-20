import 'dart:io';
const num pi = 3.14;
const param = 'param';

/**
 * CONST VS FINAL
 *
 * Variabel yang dideklarasikan sebagai const bersifat compile-time constants,
 * artinya nilai tersebut harus sudah diketahui sebelum program dijalankan.
 * Sedangkan final, nilainya masih bisa diinisialisasi ketika runtime atau ketika aplikasi berjalan.
 *
 */

void main(List<String> arguments) {
  // TEMPLATE PROCEDURE FUNCTION
  /*
  returnType functionName(type param1, type param2, ...) {
    return result;
  }
  */

  // commonFunction();
  // anonymousFunction();
  higherOrderFunction();
}

void inputOutput(){
  final text = 'abc';
  stdout.write('input value for final variable : ');
  final inputFinal = stdin.readLineSync().toString();
}

void commonFunction(){
  print(product(5, 7));
  greet();
  greetNewUser('winda', 21, true);
  // positional optional params
  greetNewUserPositionalOptionalParams('winda');
  greetNewUserPositionalOptionalParams('winda', 21);
  greetNewUserPositionalOptionalParams('winda', 21, true);
  // named optional params
  greetNewUserNamedOptionalParams(name: 'winda', isVerified: true);
  greetNewUserNamedOptionalParams(age: 21, name: 'winda', isVerified: true);
}

void greet(){
  print('hello world!');
}

void greetNewUser(String name, int age, bool isVerified){
  print('Common Procedure');
  print("hi $name ! i see that you're $age years old now");
}

void greetNewUserPositionalOptionalParams([String? name, int? age, bool? isVerified]){
  print('Positional Optional Parameters');
  print("hi $name ! i see that you're $age years old now");
}

void greetNewUserNamedOptionalParams({String name = 'default name value', var age, bool? isVerified}){
  print('Named Optional Parameters');
  print("hi $name ! i see that you're $age years old now");
}

num product(int firstNumber, double secondNumber) {
  return firstNumber * secondNumber;
}

void anonymousFunction(){
  var sum = (int num1, int num2) {
    return num1 + num2;
  };
  Function printLambda = () {
    print('This is lambda function');
  };

  var sum2 = (int num1, int num2) => num1 + num2;
  Function printLambda2 = () => print('this is a lambda function with fat arrow');

  // how to use
  print(sum(1, 2));
  print(sum2(2, 5));
  printLambda();
  printLambda2();
}

// melemparkan function sebagai parameter profunc
void higherOrderFunction(){
  // Opsi 1
  Function sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);

  // Opsi 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
  myHigherOrderFunctionValidSpecified('Hai ini function yang sudah di-specified valid function kriterianya apa',
          (num1, num2) => num1 + num2);
}

void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));  // sum(3, 4)    // return 3 + 4
}

void myHigherOrderFunctionValidSpecified(String message, int Function(int num1, int num2) myFunction) {
  print(message);
  print(myFunction(2, 8));  // sum(2, 8)    // return 2 + 8
}


