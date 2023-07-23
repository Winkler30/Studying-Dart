String? name;
void main() {
  var lastName = 'David Winkler';
  var completeName = (name ?? 'Charles') + lastName;

  String? completeName2 = null;

  print(completeName2 ?? 'Charles David Winkler');
}
