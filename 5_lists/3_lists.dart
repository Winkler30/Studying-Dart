void main() {
  final number = [1, 2, 3, 4, 5];
  print(number);
  number.add(1);
  print(number);

  //                 0         1       2
  final names = ['Charles', 'John', 'Josh'];
  print(names);
  //           3
  names.add('Anna');
  names.addAll(['Emilly', 'Michael', 'Jessica', 'Willian']);
  print(names);
  print(names[2]);

  names.insert(1, 'Charlie');
  print(names);
  print(names[1]);

  names.remove('Emilly');
  print(names);

  names.removeWhere((name) {
    if (name == 'Jessica') {
      print('Name search $name');
      return true;
    } else {
      return false;
    }
  });
  print(names);

  // print(names[0]); <- replace this
  print(names.first);

  //print(names[names.length - 1]); <- replace this
  print(names.last);

  var firstName = names.firstWhere((name) {
    print(name);
    if (name == 'Maria') {
      return true;
    } else {
      return false;
    }
  });
  print(firstName);

  final numberGenerate = List.generate(10, (index) => index + 1);
  print(numberGenerate);

  final stringGenerate = List.generate(10, (index) => 'Index ${index + 1}');
  print(stringGenerate);

  final repeat = List.filled(10, 'Charles');
  print(repeat);

  final numberGenerateForCalculation = List.generate(100, (index) => index + 1);
  var sum = numberGenerateForCalculation.fold<int>(
      0, (previousValue, number) => previousValue += number);
  print(sum);

  // Spread operator (...)
  var listNumberSpread = [1, 2, 3];
  var listNumberSpread1 = [4, 5, 6, ...listNumberSpread];
  print(listNumberSpread1);

  // Collection if
  var activePromotion = true;

  var products = [
    'Beer',
    'Soda',
    'Orange juice',
    if (activePromotion) 'Orange juice'
  ];
  print(products);

  // Collection For
  var listsInts = [1, 2, 3];
  var listsString = ['#0', for (var i in listsInts) '#$i'];

  print(listsString);
  var string = listsString.join('->');
  print(string);
}
