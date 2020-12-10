import 'data.dart';

void main() {
  nums.sort();

  int cunt1 = 1;
  int cunt3 = 1;

  for (int index = 1; index < nums.length; index++) {
    if (nums[index] - nums[index - 1] == 1) {
      cunt1 += 1;
    }

    if (nums[index] - nums[index - 1] == 3) {
      cunt3 += 1;
    }
  }

  print(cunt1 * cunt3);
}
