void main() {
  var number = List.generate(10, (index) => index);

  for (var i = 0; i < number.length; i++) {
    if (i == 5) {
      continue;
    }
    print(number[i]);
  }

  number.where((number) => number != 5).forEach((number) => print(number));

  final numberYet5 = number.takeWhile((number) => number < 6);
  print(number[1]);
  print(numberYet5.elementAt(1));

  final numberRemoveYet5 = number.skipWhile((number) => number < 6).toList();

  print(numberRemoveYet5);

  
}
