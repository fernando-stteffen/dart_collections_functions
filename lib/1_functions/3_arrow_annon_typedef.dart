void main() {
  print(sumInt(10, 10));

  //anonnymous fuction

  () {
    print('Running');
  }();

  (int a, int b) {
    print('${a + b}');
  }(10, 10);

  var funcSum = (int a, int b) {
    print('${a + b}');
  };

  funcSum(10, 20);

  callFunctionParam((name) => print(name));
}

void callFunctionParam(Function(String name) funcReceiveTheName) {
  final calc = 1 + 1;
  var result = 'This number is $calc';
  funcReceiveTheName(result);
}

void callFunctionParam2(FuncReceiveName funcReceiveTheName) {
  final calc = 1 + 1;
  var result = 'This number is $calc';
  funcReceiveTheName(result);
}

int sumInt(int num1, int num2) => num1 + num2;

typedef FuncReceiveName = void Function(String name);
