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
  Result data = checkPath([], 0, 0);

  print(data.acc);
}
