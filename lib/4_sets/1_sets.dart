void main() {
  var numbersList = <int?>[];
  numbersList.add(1);
  numbersList.add(2);
  numbersList.add(3);
  numbersList.add(3);
  numbersList.add(null);
  numbersList.add(1);
  numbersList.add(2);
  print(numbersList);

  var numbersSet = <int?>{};
  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(3);
  numbersSet.add(null);
  numbersSet.add(1);
  numbersSet.add(2);
  print(numbersSet);

  print(numbersList.toSet());

  var numbers1 = {1, 2, 3, 4, 5, 6};
  var numbers2 = {1, 3, 4, 7};

  print(numbers1.difference(numbers2));
  print(numbers2.difference(numbers1));
  print(numbers1.union(numbers2));
  print(numbers1.intersection(numbers2));
  print(numbers1.lookup(1));
}
