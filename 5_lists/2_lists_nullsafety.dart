void main() {
  // ? = Nullable (Accept NULL)
  // With nothing (default) = non-null (does not accept NULL)

  // Does not accept null
  var name = <String> [];

  // Accept null
  List<String>? nameNull;

  // List cannot be null, nor can the items 
  List<String> nameInternalNull = ['Charles'];
  var nameInternalNull1 = ['Charles'];

  // Lists cannot be null, but the items internal can be null
  List<String?> nameInternalAcceptNull = ['Charles',null];
  var nameInternalAcceptNull1 = <String?> ['Charles',null];
  
  // Lists can be null, and the items can be null too
  List<String?>? nameInternalAcceptNull2 = ['Charles',null];

}
