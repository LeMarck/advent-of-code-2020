import 'data.dart';
import 'task_1.dart';

void main() {
  int acc = 0;
  int index = 0;
  List<int> visits = [];

  while(true) {
    Instruction instruction = instructions[index];
    visits.add(index);

    if (instruction.operation == 'jmp') {
      Result checkData = checkPath(visits.sublist(0), acc, index + 1);

      if (!checkData.isInfinity) {
        print(checkData.acc);
        break;
      }
    }

    if (instruction.operation == 'nop') {
      Result checkData = checkPath(visits.sublist(0), acc, index + instruction.argument);

      if (!checkData.isInfinity) {
        print(checkData.acc);
        break;
      }
    }

    switch(instruction.operation) {
      case 'nop':
        index += 1;
        break;
      case 'jmp':
        index += instruction.argument;
        break;
      case 'acc':
        index += 1;
        acc += instruction.argument;
        break;
    }
  }
}
