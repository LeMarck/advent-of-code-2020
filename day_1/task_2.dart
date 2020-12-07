import 'data.dart';

int repair(List<int> nums, int target) {
  for (int i = 0, len = nums.length; i < len - 1; i++) {
    for (int j = i; j < len; j++) {
      int a = nums[i];
      int b = nums[j];
      int offset = target - a - b;

      if (nums.contains(offset)) {
        return offset * a * b;
      }
    }
  }

  return 0;
}

void main() {
  print(repair(nums, 2020));
}
