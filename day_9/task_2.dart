import 'data.dart';
import 'task_1.dart';

List<int> getSublist(List<int> nums, int target) {
  int len = nums.length;

  for (int i = 0; i < len; i++) {
    int count = 0;

    for (int j = i; j < len; j++) {
      count += nums[j];

      if (count > target) {
        break;
      }

      if (count == target) {
        return nums.sublist(i, j);
      }
    }
  }

  return [];
}

void main() {
  int target = getInvalidNum(nums, 25);
  List<int> sublist = getSublist(nums, target);
  sublist.sort();

  print(sublist.first + sublist.last);
}
