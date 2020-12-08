import 'data.dart';

void main() {
  int count = 0;

  groups.forEach((group) {
    List<String> answers =
        group.split(new RegExp(r'\n')).where(filter).toList();

    int groupSize = answers.length;
    String answersStr = answers.join('');
    Set<String> chars = answersStr.split('').toSet();

    int size = 0;

    chars.forEach((element) {
      if (new RegExp(element).allMatches(answersStr).length == groupSize) {
        size += 1;
      }
    });

    count += size;
  });

  print(count);
}
