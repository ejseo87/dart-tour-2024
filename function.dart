String sayHello({
  required name,
  int age = 99,
  String country = 'wacanda',
}) {
  return "Hello $name, your are $age, and you come from $country";
}

String statement(String target, String todo, [int? time = 3]) =>
    "This $target can\'t work for $todo since $time hours after.";

String capitalizationName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print("### named parameter");
  print(sayHello(name: 'nico'));
  print(
    sayHello(
      name: 'sara',
      age: 26,
      country: 'canada',
    ),
  );

  print("### optional positional parameter");
  String temp = statement('evelator', 'repairing', 2);
  print(temp);
  String temp2 = statement('escalator', 'installing');
  print(temp2);

  print("### QQ operator");
  print(capitalizationName('nico'));
  print(capitalizationName(null));

  var job;
  job ??= 'householder';
  job ??= 'part-timer';
  print(job);

  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("### typedef");
  print(list);
  print(reverseListOfNumbers(list));

  sayHi({"name": "nico"});
}
