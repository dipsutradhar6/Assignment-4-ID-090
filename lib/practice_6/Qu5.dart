class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

  void display() {
    print('Camera ID: $_id');
    print('Brand: $_brand');
    print('Color: $_color');
    print('Price: \$$_price');
  }
}

void main() {
  var cam1 = Camera(1, 'Canon', 'Black', 500);
  var cam2 = Camera(2, 'Nikon', 'Silver', 650);
  var cam3 = Camera(3, 'Sony', 'White', 700);

  var cameras = [cam1, cam2, cam3];

  for (var cam in cameras) {
    cam.display();
  }
}
