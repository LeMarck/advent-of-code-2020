import 'data.dart';
import 'task_1.dart';

void main() {
  List<int> ids = tickets.map(getId).toList();
  ids.sort();

  for(int index = 1; index < ids.length; index++) {
    if (ids[index] - ids[index - 1] == 2) {
      print(ids[index] - 1);
      break;
    }
  }
}
