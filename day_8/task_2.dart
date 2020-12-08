import 'data.dart';

class Result {
  int acc;
  bool isInfinity;

  Result(this.acc, this.isInfinity);
}

Result checkPath(List<int> visits, int acc, int index) {
  while(index < instructions.length) {
    if (visits.contains(index)) {
      return new Result(acc, true);
    }

    Instruction instruction = instructions[index];
    visits.add(index);

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

  return new Result(acc, false);
}

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
