import 'data.dart';

int sortRule(String a, String b) => a.compareTo(b);

final String requiredFields = ['byr', 'ecl', 'eyr', 'hcl', 'hgt', 'iyr', 'pid'].join('');

bool isValidFields(Map<String, String> data) {
  data.remove('cid');

  List<String> keys = data.keys.toList();
  keys.sort(sortRule);

  return keys.join('') == requiredFields;
}

void main() {
  print(passports.where(isValidFields).length);
}
