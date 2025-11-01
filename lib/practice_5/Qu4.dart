import 'dart:io';

void main() async {
  final sourceFile = File('hello.txt');
  final copiedFile = File('hello_copy.txt');
  await sourceFile.copy(copiedFile.path);
  print('File copied successfully!');
}
