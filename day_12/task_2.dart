import 'data.dart';

void main() {
  int x = 10;
  int y = 1;
  int wayX = 0;
  int wayY = 0;

  path.forEach((element) {
    RegExpMatch matched = new RegExp(r'^(\w)(.+)$').firstMatch(element);

    String direction = matched.group(1);
    int value = int.parse(matched.group(2));

    switch(direction) {
      case 'N': {
        y += value;
        break;
      }
      case 'S': {
        y -= value;
        break;
      }
      case 'W': {
        x -= value;
        break;
      }
      case 'E': {
        x += value;
        break;
      }
      case 'F': {
        wayX += x * value;
        wayY += y * value;
        break;
      }
      case 'R': {
        while (value > 0) {
          int s = x;
          x = y;
          y = -s;
          value -= 90;
        }
        break;
      }
      default: {
        while (value > 0) {
          int s = x;
          x = -y;
          y = s;
          value -= 90;
        }
        break;
      }
    }
  });

  print(wayX.abs() + wayY.abs());
}
