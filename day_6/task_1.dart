import 'data.dart';

void main() {
  int count = 0;

  groups.forEach((group) {
    Set<String> answer =
        group.split(new RegExp(r'\n')).where(filter).join('').split('').toSet();

    count += answer.length;
  });

  print(count);
}
