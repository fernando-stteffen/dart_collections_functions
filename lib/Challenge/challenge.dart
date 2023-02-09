void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var setPeople = pessoas.toSet();

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final isMasculine = find(setPeople, 'Masculino').length;
  final isFeminine = find(setPeople, 'Feminino').length;

  print('#$isMasculine of pacients are Masculine');
  print('#$isFeminine of pacients are Feminine');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('Pacients over 18yrs:');
  var infos = getIdentifiedFields(setPeople);

  var sortedByName = sortByName(infos);

  for (var element in sortedByName) {
    if (int.parse(element['age']) >= 18) print(element);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  var sortedByAge = sortByAge(infos);
  print('The oldest pacient is: ${sortedByAge.last['name']}');
}

List<Map> sortByName(List<Map> setPeople) {
  var clonedList = setPeople;
  clonedList.sort(((a, b) {
    return a['name'].compareTo(b['name']);
  }));
  return clonedList;
}

List<Map> sortByAge(List<Map> setPeople) {
  var clonedList = setPeople;
  clonedList.sort(((a, b) {
    final ageA = int.parse(a['age']);
    final ageB = int.parse(b['age']);
    return ageA.compareTo(ageB);
  }));
  return clonedList;
}

List<Map> getIdentifiedFields(Set setPeople) {
  var result = <Map>[];
  for (var element in setPeople) {
    final data = element.split('|');
    var people = <String, String>{
      'name': data[0],
      'age': data[1],
      'sex': data[2]
    };
    result.add(people);
  }
  return result;
}

List<String> find(Set setPeople, String toFind) {
  var resultFinded = <String>[];

  for (var peopleInfo in setPeople) {
    final peopleData = peopleInfo.split('|').toList();
    peopleData.forEach((element) =>
        (element.toLowerCase() == toFind.toLowerCase())
            ? resultFinded.add(element.toString())
            : null);
  }

  return resultFinded;
}

class Console {
  log(String text) {
    print(text);
  }
}
