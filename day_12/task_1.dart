import 'data.dart';

void main() {
  Map<String, int> data = {'N': 0, 'S': 0, 'E': 0, 'W': 0};
  List<String> compass = ['E', 'S', 'W', 'N'];
  String currentDirection = compass[0];

  path.forEach((element) {
    RegExpMatch matched = new RegExp(r'^(\w)(.+)$').firstMatch(element);

    String direction = matched.group(1);
    int value = int.parse(matched.group(2));

    if (direction == 'R' || direction == 'L') {
      int size = value ~/ 90;
      int index = compass.indexOf(currentDirection) +
          ((direction == 'R') ? size : -size);

      currentDirection = compass[index % compass.length];
    } else if (direction == 'F') {
      data[currentDirection] += value;
    } else {
      data[direction] += value;
    }
  });

  print((data['N'] - data['S']).abs() + (data['E'] - data['W']).abs());
}
