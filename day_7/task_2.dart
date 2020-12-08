import 'data.dart';

int calc(List<String> bags, String color) {
  for(int index = 0; index < bags.length; index++) {
    RegExpMatch data = new RegExp(r'(.+?) bags contain (.+).').firstMatch(bags[index]);
    String bagColor = data.group(1);
    String containColors = data.group(2);

    if (bagColor == color) {
      if (containColors == 'no other bags') {
        return 0;
      }

      int count = 0;

      containColors.split(', ').forEach((element) {
        RegExpMatch match = new RegExp(r'(\d+?) (.+) bags?').firstMatch(element);
        int size = int.parse(match.group(1));

        count += size + size * calc(bags, match.group(2));
      });

      return count;
    }
  }

  return 0;
}

void main() {
  print(calc(bagsInfo, 'shiny gold'));
}
