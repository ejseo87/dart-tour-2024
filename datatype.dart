void listCollecionIf() {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print("###collection if");
  print(numbers);
}

void printVariables() {
  var name = 'nico';
  var age = 10;
  var greeting = 'Hello everyone, my name is $name, I\'m ${age + 2}';
  print("###print variables");
  print(greeting);

  var price = "one million dollars";
  print("Total price ${price}");
  print("Total price $price");

  var height = 10;
  print("height is $height.");
  //print("height is $(height).");
}

void listCollectionFrom() {
  var oldFriends = [
    'nico',
    'lynn',
  ];
  var newFriends = [
    'lewis',
    'ralpf',
    'darren',
    for (var friend in oldFriends) "💖 $friend",
  ];
  print("###collection for");
  print(newFriends);
}

void dartMap() {
  List<Map<String, Object>> players = [
    {
      'name': 'nico',
      'xp': 19.99,
      'superposer': false,
    },
    {
      'name': 'lynn',
      'xp': 19.99,
      'superposer': false,
    },
  ];
  print("###Mapin dart");
  print(players);
}

void dartSet() {
  print("###compare set and list");
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print("set: $numbers");

  List<int> numbers2 = [1, 2, 3, 4];
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1);
  print("list: $numbers2");
}

void main() {
  //fuctionss about previous lectures
  listCollecionIf();
  printVariables();
  listCollectionFrom();
  dartMap();
  dartSet();
}
