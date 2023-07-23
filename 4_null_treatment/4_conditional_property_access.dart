String? completeName = 'Charles David Winkler';
void main() {
  // Null Aware Operator
  // var completeNameLocal = completeName ?? 'Name';
  
  
  // Conditional Property Access
  print(completeName?.toUpperCase() ?? 'name not available');


}
