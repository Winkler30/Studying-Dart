void main() {
  final age = 20;
  print('Youre age is $age');

  final value = -20;
  if (value.isNegative) {
    print(value);
  }
  final valueDouble = 10.65;
  print(valueDouble.round());
  print(valueDouble.roundToDouble());

  final valueString = '20';
  final valueString2 = 'Charles';
  final valueInt = int.parse(valueString);
  final valueInt2 = int.tryParse(valueString2);
  print(valueInt);
  print(valueInt2);
  if (valueInt2 != null) {
    print('the value is ${valueInt2 + 2}');
  }

  final shirtPrice = 30.68421;
  print(shirtPrice.toStringAsFixed(2));
}
