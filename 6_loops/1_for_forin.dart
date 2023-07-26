void main() {
  var number = List.generate(10, (index) => index);
  var names = ['Charles', 'Robert', 'Louis', 'Charlie'];

  print('Print names with conventional for');
  for (var i = 0; i < number.length; i++) {
    print(number[i]);
  }

  // FOR - IN
  for (var number in names );
  print(number);
}
