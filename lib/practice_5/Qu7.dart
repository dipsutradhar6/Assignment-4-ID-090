import 'dart:io';

void main() async {
  final file = File('students.csv');

  final data = [
    ['Name', 'Age', 'Address'],
    ['Dip', '24', 'Sylhet'],
    ['anupom', '24', 'Dhaka'],
    ['Shahi', '25', 'Dhaka']
  ];

  final buffer = StringBuffer();
  for (var row in data) {
    buffer.writeln(row.join(','));
  }

  await file.writeAsString(buffer.toString());
  print('Data written to students.csv');

  final contents = await file.readAsLines();
  print('\nReading from file:\n');
  for (var line in contents) {
    print(line);
  }
}
