mixin QuickRunner {
  void runQuick() {
    print("Runnnnnnnnnn!!!!!!");
  }
}

mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin Tall {
  final double height = 1.99;
}

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi, my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human with QuickRunner, Strong, Tall {
  final Team team;

  Player({required this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

class Horse with Strong, QuickRunner {}

void main() {
  var player = Player(team: Team.red, name: 'nico');
  player.sayHello();
  player.runQuick();
}
