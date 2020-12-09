import 'data.dart';
import '../day_1/task_1.dart';

getInvalidNumIndex() {
  int preamble = 25;
  for (int index = preamble; index < nums.length; index++) {
    int num = nums[index];
    List<int> indexes = getTwoSumIndexes(nums.sublist(index - preamble, index), num);

    if (indexes == null) {
      return num;
    }
  }

  return null;
}

void main() {
  print(getInvalidNumIndex());
}
