import 'data.dart';
import '../day_1/task_1.dart';

int getInvalidNum(List<int> nums, int preamble) {
  for (int index = preamble; index < nums.length; index++) {
    int num = nums[index];
    List<int> indexes =
        getTwoNumsOfTarget(nums.sublist(index - preamble, index), num);

    if (indexes.length == 0) {
      return num;
    }
  }

  return 0;
}

void main() {
  print(getInvalidNum(nums, 25));
}
