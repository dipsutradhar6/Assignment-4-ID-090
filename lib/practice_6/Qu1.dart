class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void display() {
    print('Laptop ID: $id');
    print('Laptop Name: $name');
    print('RAM: ${ram}GB');
  }
}

void main() {
  var laptop1 = Laptop(1, 'Dell Inspiron', 8);
  var laptop2 = Laptop(2, 'HP Pavilion', 16);
  var laptop3 = Laptop(3, 'MacBook Pro', 32);

  laptop1.display();
  laptop2.display();
  laptop3.display();
}
