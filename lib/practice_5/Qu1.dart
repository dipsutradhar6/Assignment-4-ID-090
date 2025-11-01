import 'dart:io';

void main() async {
  final file = File('hello.txt');
  const name = 'Dip Shutra Dar';
  await file.writeAsString('My name is $name\n');
  print('Name written successfully!');
}
