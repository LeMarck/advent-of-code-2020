import 'data.dart';

void main() {
  int acc = 0;
  int index = 0;
  List<int> visits = [];

  while(!visits.contains(index)) {
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

  print(acc);
}
