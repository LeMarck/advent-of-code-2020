import 'dart:math';
import 'data.dart';

void main() {
  nums.sort();

  int target = nums.last;

  List<int> buffer = List.generate(target + 1, (i) => 0);
  buffer[nums.first - 1] = 1;

  for (int num in nums) {
    for (int index = max(num - 3, 0); index < num; index++) {
      buffer[num] += buffer[index];
    }
  }

  print(buffer[target]);
}
