import 'fundamental/Bird.dart';
import 'fundamental/Cat.dart';
import 'mixin/Performer.dart';
import 'dart:io';

enum Status {
  Todo, In_Progress, In_Review, Done
}

void main(List<String> arguments) {
  fundamental();
  inheritance();
  interface();
  mixin();

  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
  }

}

void fundamental(){
  /*
  var commonAnimal = Animal('kucing', 1, 2, 'VIP', 'Rare');
  var predefinedRareAnimal = Animal.rare('Rare doggo', 2, 10);

  commonAnimal.eat();
  commonAnimal.name = 'kucing berubah';
  commonAnimal.poop();

  //CASCADE NOTATION
  var cascadeRareAnimal = Animal.rare('lexa', 2, 3)
    ..eat()
    ..sleep()
    ..poop();
   */
}

void inheritance(){
  var kucingOren = Cat('kucing oren', 2, 3, 'VIP', 'Rare', 'Orange');
  kucingOren.eat();
  kucingOren.poop();
}

void interface(){
  var bird = Bird('burung', 2, 5, 'Common', 'Rare');
  bird.fly();
}

void mixin(){
  /**
   * kelas mixin bersifat stack atau bertumpuk.
   * Kelas-kelas ini berurutan dari yang paling umum hingga paling spesifik.
   * Sehingga sesuai urutan mixin di atas kelas Musician akan menampilkan method dari Singer
   * karena berada di urutan terakhir atau paling spesifik.
   *
   */
  var arielNoah = Musician();
  arielNoah.perform(); // output : Singing
}