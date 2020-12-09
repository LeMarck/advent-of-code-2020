import 'data.dart';
import 'task_1.dart';

int calc(List<int> nums, int target) {
  for (int index = 0, len = nums.length; index < len - 1; index++) {
    List<int> numsOfTarget = getTwoNumsOfTarget(nums, target - nums[index]);

    if (numsOfTarget.length != 0) {
      return nums[index] * numsOfTarget[0] * numsOfTarget[1];
    }
  }

  return 0;
}

void main() {
  print(calc(nums, 2020));
}
