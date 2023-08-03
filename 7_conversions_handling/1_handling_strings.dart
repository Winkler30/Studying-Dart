void main() {
  final name = 'Charles David Winkler';

  var subStringName = name.substring(7);
  print(subStringName);

  var subStringNameFinal = name.substring(0, 7);
  print(subStringNameFinal);

  var gender = 'male';
  var genderAcronym = gender.substring(0, 1);
  print(genderAcronym);
  if (genderAcronym == 'M') {
    print('You are a Male');
  }

  if (gender.startsWith('M')) {
    print('You are a Male');
  }

  if (gender.toLowerCase().startsWith('m')) {
    print('You are a Male');
  }

  if (name.toLowerCase().contains('Charles')) {
    print('Detect Name Charles');
  }

  // Interpolation
  var firstName = 'Charles';
  var lastName = 'Winkler';

  var greeting = 'Hello ' + firstName + lastName + ' Nice to meet you';
  print(greeting);

  var gretting2 = 'Hello $firstName $lastName how are you';
  print(gretting2);

  print('Hello ${firstName.toLowerCase()}');

  var pacient = 'Charles|20|Skills Dart and Flutter|SP';
  var dataPacient = pacient.split('|');
  print(dataPacient);
  print(dataPacient[1]);
  print(dataPacient[2]);
  print(dataPacient[3]);

  for (var data in dataPacient) {
    print(data);
  }
  dataPacient.forEach((data) => print(data));

  var pacientALot = [
    'Charles Winkler|20|Skills Dart and Flutter|SP',
    'Caroline Victoria|25|Skills Dart and Flutter|NY',
    'John Robert|25|Skills Python and Java|NY',
  ];

  for (pacient in pacientALot) {
    var dataPacient = pacient.split('|');
    var fullName = dataPacient[0];
    var names = fullName.split(' ');
    print(names.first);
    print(names.last); 
    print('${names.first} ${names.last}');
  }
}
