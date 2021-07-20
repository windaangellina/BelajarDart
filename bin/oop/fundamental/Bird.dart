import 'Animal.dart';
import 'Flyable.dart';

class Bird extends Animal implements Flyable{
  Bird(String name, int age, double weight, String rank, String uniqueness)
      : super(name, age, weight, rank, uniqueness);

  @override
  void fly() {
    print('$name is flying');
  }

}