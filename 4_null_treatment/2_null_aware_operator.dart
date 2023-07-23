String? name;
void main() {
  var completeName =
      ((name != null) ? name! + 'Charles' : 'Charles David Winkler');
  print(completeName);

  String completeName2;

  if (name != null) {
    completeName2 = name! + 'Charles';
  } else {
    completeName2 = 'Charles David Winkler';
  }

  print(completeName2);
  var nameLocal = name;

  if (nameLocal == null) {
    nameLocal = 'Charles';
  }
  var completeName3 = nameLocal + 'Winkler';
  print(completeName3);
}
