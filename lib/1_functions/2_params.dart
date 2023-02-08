void main() {
  // required default params

  print('The sum of 10 + 10 is ${sumIntegers(10, 10)}');

  // named params -> this is nullable by default
  // named params can be promoted to non-null;

  print('The sum of 10.2 + 10.3 is ${doublesSum(num1: 10.2, num2: 10.3)}');

  // required params
  print('The sum of 10.2 is ${doublesSumRequired(num2: 5.2, num1: 1.0)}');

  print('The sum of two doubles default is ${doublesSumDefault()}');
}

int sumIntegers(int num1, int num2) {
  return num1 + num2;
}

//nullable by default prometed to non-null;
double doublesSum({double? num1, double? num2}) {
  return (num1 != null && num2 != null) ? num1 + num2 : 0.0;
}

double doublesSumRequired({required double num1, required double num2}) {
  return num1 + num2;
}

double doublesSumDefault({double num1 = 0.1, double num2 = 0.1}) {
  return num1 + num2;
}
