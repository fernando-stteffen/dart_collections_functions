void main() {
  var numbers = List.generate(10, (index) => index);

  numbers.forEach(print);
  numbers.forEach(personalPrint);

  // Expand
  var list = [
    [1, 2],
    [3, 4],
  ];

  print(list[0][0]);

  var newList = list.expand((element) => element);
  print(newList.toList());

  final searchList = ['fsteve', 'fbill', 'frichard', 'fernando'];

  print(searchList.any((element) => element == 'fernando'));

  //every

  print(searchList.every((item) => item.contains('f')));

  print('.sort');

  var listToOrder = [33, 58, 192, 495, 1, 34, 99];
  var listToOrderTwo = ['jennifer', 'marizia', 'kate', 'Ann', 'Beyonce'];
  var listToOrderThree = [
    'jennifer|2',
    'marizia|10',
    'kate|45',
    'Ann|95',
    'Beyonce|42'
  ];
  var listToOrderFour = [
    'jennifer|2',
    'marizia|10',
    'kate|45',
    'Ann|95',
    'Beyonce|42'
  ];

  listToOrder.sort();
  listToOrderTwo.sort();
  listToOrderThree.sort((name1, name2) {
    final age1 = int.tryParse(name1.split('|')[1]);
    final age2 = int.tryParse(name2.split('|')[1]);
    var result = -1;

    if (age1 != null && age2 != null) {
      result = (age1 < age2)
          ? -1
          : (age1 == age2)
              ? 0
              : 1;
    }
    return result;
  });

  listToOrderFour.sort((name1, name2) {
    final age1 = int.parse(name1.split('|')[1]);
    final age2 = int.parse(name2.split('|')[1]);
    var result = -1;
    
    return age1.compareTo(age2);
  });

  print(listToOrderTwo);
  print(listToOrder);
  print(listToOrderThree);
  print(listToOrderFour);
}

void personalPrint(Object text) {
  print(text);
}
