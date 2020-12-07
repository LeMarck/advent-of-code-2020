import 'data.dart';

int repair(List<int> nums, int target) {
  Map<int, bool> buffer = {};

  for (int index = 0, len = nums.length; index < len; index++) {
    int num = nums[index];
    int offset = target - num;

    if (buffer[offset] != null) {
      return offset * num;
    }

    buffer[num] = true;
  }

  return 0;
}

void main() {
  print(repair(nums, 2020));
}
