import 'data.dart';
import 'task_1.dart';

search() {
  int target = getInvalidNumIndex();
  int len = nums.length;

  for (int i = 0; i < len; i++) {
    int count = 0;
    for (int j = i; j < len; j++) {
      count += nums[j];

      if (count > target) {
        break;
      }

      if (count == target) {
        return [i, j];
      }
    }
  }
}

void main() {
  List<int> indexes = search();
  List<int> sublist = nums.sublist(indexes[0], indexes[1]);
  sublist.sort();

  print(sublist.first + sublist.last);
}
