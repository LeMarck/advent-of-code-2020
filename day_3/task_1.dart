import 'data.dart';

class Position {
  int x;
  int y;

  Position(this.x, this.y);
}

int getTreeCount(List<String> map, int offsetX, int offsetY) {
  Position position = new Position(0, 0);
  int patternSize = map[0].length;
  int count = 0;

  while (map.length > position.y) {
    if (map[position.y][position.x] == '#') {
      count += 1;
    }

    position.x = (position.x + offsetX) % patternSize;
    position.y = position.y + offsetY;
  }

  return count;
}

void main() {
  print(getTreeCount(map, 3, 1));
}
