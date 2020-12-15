import 'data.dart';

class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

String getNewState(List<List<String>> map, Point point) {
  int count = 0;
  int n = map.length;
  int m = map.first.length;

  neighboring_cells.forEach((element) {
    int x = point.x;
    int y = point.y;
    do {
      x = x + element[0];
      y = y + element[1];
    } while (0 <= x && x < n && 0 <= y && y < m && map[x][y] == '.');

    count += (x < 0 || x >= n || y < 0 || y >= m)
        ? 0
        : (map[x][y] == '#' ? 1 : 0);
  });

  return map[point.x][point.y] == '#' && count >= 5
      ? 'L'
      : map[point.x][point.y] == 'L' && count == 0
      ? '#'
      : map[point.x][point.y];
}

List<List<String>> getNewMap(List<List<String>> map) {
  List<List<String>> newMap = [];

  for (int x = 0; x < map.length; x++) {
    List<String> line = [];
    for (int y = 0; y < map[x].length; y++) {
      line.add(getNewState(map, new Point(x, y)));
    }

    newMap.add(line);
  }

  return newMap;
}

void main() {
  while (true) {
    List<List<String>> newMap = getNewMap(map);

    if (newMap.toString() == map.toString()) {
      break;
    }

    map = newMap;
  }

  int length = map
      .map((e) => e.where((element) => element == '#').join(''))
      .join('')
      .length;

  print(length);
}
