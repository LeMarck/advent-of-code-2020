import 'data.dart';

getTwoSumIndexes(List<int> nums, int target) {
  Map<int, int> buffer = {};

  for (int index = 0, len = nums.length; index < len; index++) {
    int num = nums[index];
    int offset = target - num;

    if (buffer[offset] != null) {
      return [buffer[offset], index];
    }

    buffer[num] = index;
  }

  return null;
}

void main() {
  List<int> indexes = getTwoSumIndexes(nums, 2020);
  print(nums[indexes[0]] * nums[indexes[1]]);
}
