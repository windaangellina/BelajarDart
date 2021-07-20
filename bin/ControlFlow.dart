import 'dart:io';

void main(List<String> arguments) {
  print('hello from control flow');

  selection();
  looping();
}

void selection(){
  var angka = 100;
  if(angka % 2 == 0){
    print('angka genap');
  }
  else{
    print('angka ganjil');
  }

  var name;
  // apabila name = null maka buyerName akan diisi dengan 'default null value'
  var buyerName = name ?? 'default null value';
  print('buyer name is : $buyerName');
}

void looping(){
  // for iterator
  var size = 6;
  for(var i = 1; i < size; i++){
    var tmp = '';
    for(var j = 0; j < i; j++){
      tmp += '*';
    }
    print(tmp);
  }

  
}