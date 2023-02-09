void main() {
  String age = '33 years';
  String? name;
  try {
    int.parse(age);
    name!.toLowerCase();
  } catch (error) {
    print('unnable to convert age');
    print(error);
  }
}
