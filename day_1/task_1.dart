import 'data.dart';

List<int> getTwoNumsOfTarget(List<int> nums, int target) {
  Map<int, int> buffer = {};

  for (int index = 0, len = nums.length; index < len; index++) {
    int num = nums[index];
    int offset = target - num;

    if (buffer[offset] != null) {
      return [nums[buffer[offset]], nums[index]];
    }

    buffer[num] = index;
  }

  return [];
}

void main() {
  List<int> numsOfTarget = getTwoNumsOfTarget(nums, 2020);
  print(numsOfTarget[0] * numsOfTarget[1]);
}
