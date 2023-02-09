void main() {
  final client = <String, String>{
    'name': 'Fernando',
    'course': 'dart',
    'age': '18'
  };

  Map<String, String>? clientNullSafety;
  Map<String?, String> clientNullSafety2 = {
    null: 'fernando',
  };
  Map<String, String?> clientNullSafety3 = {
    'name': null,
  };
  var clientNullSafety4 = <String, String?>{
    'name': null,
  };

  print(client['name']);

  var products = <String, String>{};
  products.putIfAbsent('name', () => 'newName');
  products.putIfAbsent('name', () => 'soda');

  print(products);
  products.update('name', (value) => 'soda');
  print(products);

  products.update('price', (value) => '10', ifAbsent: () => '10');
  print(products);

  products.forEach((key, value) {
    print('The $key of product is $value');
  });

  for (var item in products.entries) {
    print('The ${item.key} of product is ${item.value}');
  }

  var newProducts =
      products.map((key, value) => MapEntry(key.toUpperCase(), value));

  for (var item in newProducts.entries) {
    print('The ${item.key} of product is ${item.value}');
  }

  var productsMore = <String, Object>{
    'name': 'fernando',
    'grade': 'consultant',
    'skills': [
      {
        'name': 'php',
        'experience': '7 years',
      },
      {
        'name': 'node',
        'experience': '3 years',
      }
    ]
  };

  print(productsMore);
}
