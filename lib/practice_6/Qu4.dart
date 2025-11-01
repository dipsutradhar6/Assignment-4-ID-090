class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);

  void display() {
    print('ID: $id');
    print('Name: $name');
    print('Color: $color');
  }
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  void display() {
    super.display();
    print('Sound: $sound');
  }
}

void main() {
  var cat1 = Cat(1, 'Tom', 'Gray', 'Meow');
  cat1.display();
}
