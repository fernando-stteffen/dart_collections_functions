void main() {
  print(Colors.orange.name);
  print(Colors.values.byName('blue'));
  // print(Colors.values.byName('cyan'));

  var mapEnum = Colors.values.asNameMap();
  print(mapEnum);
  print(mapEnum['blue']);
}

enum Colors { red, orange, blue, white, green, black, brown, yellow }
