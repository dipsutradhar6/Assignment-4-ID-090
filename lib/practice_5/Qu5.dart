import 'dart:io';

void main() async {
  for (var i = 1; i <= 100; i++) {
    final file = File('file_$i.txt');
    await file.writeAsString('This is file number $i\n');
  }
  print('100 files created successfully!');
}
