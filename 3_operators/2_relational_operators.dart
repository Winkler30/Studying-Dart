void main() {
  //6 types
  // == (Equality),
  //!= (Inequality),
  //> (Greater than),
  //< (Less than),
  // <= (Less than or equal to),
  //>= (Greater than or equal to)

  final age = 18;
  final typePet = 'Cat';

  if (age == 18) {
    print('Congrats, you can get a driver license');
  }
  if (age > 17) {
    print('Congrats, you can get a driver license');
  }
  if (age >= 17) {
    print('Congrats, you can get a driver license');
  }
  if (typePet != 'Dog') {
    print('Im sorry, we dont have anything for your pet');
  }
}
