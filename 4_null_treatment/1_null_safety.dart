String? nameHigher;

void main() {
  String name = '';
  String? nameNull;

  if (nameNull != null) {
    nameNull.isEmpty;
  }
  name.isEmpty;

  var nameLocal = nameHigher;
  if (nameLocal != null) {
    nameLocal.isEmpty;
  }
  nameHigher = '';
  nameHigher!.isEmpty;
}
