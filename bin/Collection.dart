void main(List<String> arguments) {
    list();
    spreadOperatorList();
    set();
    map();
}

void list(){
  // List -> array biasanya
  // List digunakan untuk menyimpan banyak data. Data pada List disusun secara berurutan dan diakses menggunakan index.
  var numberList = [1, 2, 3, 4, 5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];
  var dynamicList = [1, 'Dicoding', true]; // List<dynamic>

  stringList.forEach((element) {
    print(element);
  });

  // LIST OPERATIONS
  stringList.add('new value added to the end of the list');
  stringList.insert(1, 'Programming');
  stringList.remove('Programming'); // Menghapus list dengan nilai Programming
  stringList.removeAt(1);           // Menghapus list pada index ke-1
  stringList.removeLast();          // Menghapus data list terakhir
  stringList.removeRange(0, 2);     // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)

}

void spreadOperatorList(){
  // combine values from more than 1 list into one
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut', 'Cola'];
  var emptyList;

  // Untuk mengatasi List yang bisa bernilai null, kita dapat menggunakan null-aware spread operator (...?)
  var allFavorites = [...favorites, ...others, ...?emptyList];
  print(allFavorites);
}

void set(){
  // Set -> collection yang hanya dapat menyimpan nilai yang unik
  // Set digunakan untuk menyimpan banyak data secara unik, tidak ada duplikasi, tidak berurutan, dan tidak diindeks.
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print(anotherSet);
  print(union);
  print(intersection);
}

void map(){
  // Map -> collection yang dapat menyimpan data dengan format key-value
  // Map menyimpan banyak data dengan format pasangan key-value
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
  };

  print(capital['Jakarta']);
  var mapKeys = capital.keys;
  var mapValues = capital.values;

  // add value to Map
  capital['New Delhi'] = 'India';

  print(capital);
  print(mapKeys);
  print(mapValues);
}