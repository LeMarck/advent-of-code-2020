import 'data.dart';

const num infinity = 1 / 0;

void main() {
  num time = int.parse(info[0]);
  num min = infinity;
  num number = infinity;

  info[1].split(',').forEach((element) {
    if (element != 'x') {
      num value = int.parse(element);
      num offset = value - (time % value);

      if (offset < min) {
        min = offset;
        number = value;
      }
    }
  });

  print(min * number);
}
