import 'data.dart';
import 'task_1.dart';

List<Position> data = [
  new Position(1, 1),
  new Position(3, 1),
  new Position(5, 1),
  new Position(7, 1),
  new Position(1, 2),
];

void main() {
  int result = 1;
  data.forEach((element) {
    result *= getTreeCount(map, element.x, element.y);
  });

  print(result);
}
