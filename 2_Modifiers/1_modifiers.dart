void main() {
  String completeName = 'Charles David Winkler';
  completeName = 'Charles';

  print(completeName);

  // Final = immutable/execution moment
  // cannot be changed after initialization (immutable)
  // are defined in the program at runtime
  final completeNameFinal = 'Charles David Winkler';
  // WRONG : completeNameFinal = 'John';

  // Const = immutable/compilation moment
  // cannot be changed after initialization (immutable)
  // are defined in the program at compilation
  // cannot receive values from other variables unless those variables are also constants.
  const completeNameConst = 'Charles David Winkler';
}
