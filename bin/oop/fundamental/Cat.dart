import 'Animal.dart';

class Cat extends Animal{
  String? furColor;

  Cat(String name, int age, double weight, String rank, String uniqueness, String furColor)
      : super(name, age, weight, rank, uniqueness){
    this.furColor = furColor;
  }

  void walk() {
    print('$name is walking');
  }
}