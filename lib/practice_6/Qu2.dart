class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void display() {
    print('House ID: $id');
    print('House Name: $name');
    print('Price: \$${price}');
  }
}

void main() {
  var house1 = House(1, 'Sunshine Villa', 150000);
  var house2 = House(2, 'Greenwood Apartments', 95000);
  var house3 = House(3, 'Lakeview Mansion', 300000);

  var houseList = [house1, house2, house3];

  for (var house in houseList) {
    house.display();
  }
}
