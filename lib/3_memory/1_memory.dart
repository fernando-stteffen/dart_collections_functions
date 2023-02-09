void main() {
  var list = ['Fernando'];
  print(list);
  print(list.hashCode);

  addMyList(list);
  print(list);

  addMyListImmutable(list);

  print(list);
}

void addMyList(List<String> names) {
  print(names.hashCode);
  names.add('Steve');
}

List<String> addMyListImmutable(List<String> names) {
  var cloneList = [...names];
  cloneList.add('No Pointers');
  return cloneList;
}
