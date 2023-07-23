void main() {
  final age = 12;

  if (age >= 18) {
    print('adult');
  } else {
    print('minor');
  }

  // (condition) ? do something : something else
  final isAdult = age >= 18 ? true : false;
  print('Is Adult?' + isAdult.toString());


  final year = 2024;
  print((year % 4 == 0 || year %400 ==0 ||year%100 !=0)? 'Bisexto':'não é Bisexto');
}

