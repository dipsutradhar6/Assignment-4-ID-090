import 'dart:io';

void main() async {
  final file = File('hello.txt');
  const friendName = 'Sumit';
  await file.writeAsString('Friend: $friendName\n', mode: FileMode.append);
  print('Friend name added successfully!');
}
