import 'dart:math';
import 'data.dart';

int getHalfValue(String str) {
  num min = 0;
  num max = pow(2, str.length);

  for (int index = 0; index < str.length; index++) {
    num middle = (max + min) / 2;

    switch (str[index]) {
      case 'F':
      case 'L':
        max = middle;
        break;
      default:
        min = middle;
    }
  }

  return min.toInt();
}

int getId(String ticket) =>
    getHalfValue(ticket.substring(0, 7)) * 8 +
    getHalfValue(ticket.substring(7));

void main() {
  int max = 0;

  tickets.forEach((element) {
    int id = getId(element);

    if (max < id) {
      max = id;
    }
  });

  print(max);
}
