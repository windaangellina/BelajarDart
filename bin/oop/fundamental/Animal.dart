abstract class Animal {
  String name;
  int age;
  double weight;
  String rank;
  String uniqueness;

  // static constructor
  Animal(this.name, this.age, this.weight, this.rank, this.uniqueness);

  // named constructor -> returns an instance with some predefined value
  Animal.rare(this.name, this.age, this.weight, {this.rank = 'VIP', this.uniqueness = 'rare'});

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
}