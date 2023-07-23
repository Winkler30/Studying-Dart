void main() {
  //Logical Operators,
  // && (AND)
  // || (OR)
  // ! (NOT)

  final gender = 'M';
  final age = 18;

  // if (gender == 'M') {
  //   if (age >= 18) {
  //     print('You may enter');
  //   } else {
  //     print('You cant enter');
  //   }
  // } else {
  //   print('You cant enter!!!');
  // }

  // TRUE && TRUE //
  if (gender =='M' && age >= 18 && gender != 'F'){
    print('You may enter');
  }
  else {
    print('You cant enter');   
  }

  // OPERATOR ||
  // TRUE ||(AND) FALSE = TRUE 
  // TRUE ||(AND) TRUE = TRUE
  // FALSE ||(AND) TRUE = TRUE  
  if (gender =='M' || age >= 18){
    print('You may enter');
  }
  else {
    print('You cant enter');   
  }

  // (TRUE && FALSE) == FALSE
  if (!(gender == 'M' && age >= 18)){
    print('You may enter');
  }
  else {
    print('You cant enter');   
  }
}
