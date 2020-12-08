import 'data.dart';

List<String> getColors(List<String> bags, String containColor) {
  List<String> colors = [];

  bags.forEach((element) {
    RegExpMatch matches = new RegExp(r'(.+?) bags contain (.+).').firstMatch(element);
    String bagColor = matches.group(1);
    String containColors = matches.group(2);

    if (containColors.contains(containColor)) {
      colors.add(bagColor);
    }
  });

  return colors;
}

void main() {
  List<String> visited = [];
  List<String> stack = ['shiny gold'];

  while(stack.length != 0) {
    String color = stack.removeLast();

    List<String> colors = getColors(bagsInfo, color);

    stack.addAll(colors);
    visited.addAll(colors);
  }

  print(visited.toSet().length);
}
