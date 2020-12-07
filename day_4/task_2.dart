import 'data.dart';
import 'task_1.dart';

bool inRange(int value, int min, int max) => (min <= value) && (value <= max);

bool isValidPassport(Map<String, String> data) {
  if (!isValidFields(data)) {
    return false;
  }

  // byr (Birth Year) - four digits; at least 1920 and at most 2002.
  if (!inRange(int.parse(data['byr']), 1920, 2002)) {
    return false;
  }

  // iyr (Issue Year) - four digits; at least 2010 and at most 2020.
  if (!inRange(int.parse(data['iyr']), 2010, 2020)) {
    return false;
  }

  // eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
  if (!inRange(int.parse(data['eyr']), 2020, 2030)) {
    return false;
  }

  // hgt (Height) - a number followed by either cm or in:
  //      If cm, the number must be at least 150 and at most 193.
  //      If in, the number must be at least 59 and at most 76.
  RegExpMatch matched = new RegExp(r'^(\d+)(cm|in)$').firstMatch(data['hgt']);

  if (matched == null) {
    return false;
  }

  int height = int.parse(matched.group(1));
  String dimension = matched.group(2);

  if (dimension == 'cm' && !inRange(height, 150, 193)) {
    return false;
  }

  if (dimension == 'in' && !inRange(height, 59, 76)) {
    return false;
  }

  // hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
  if (!new RegExp(r'^#[0-9a-f]{6}$').hasMatch(data['hcl'])) {
    return false;
  }

  // ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
  if (!new RegExp(r'^(amb|blu|brn|gry|grn|hzl|oth)$').hasMatch(data['ecl'])) {
    return false;
  }

  // pid (Passport ID) - a nine-digit number, including leading zeroes.
  return new RegExp(r'^\d{9}$').hasMatch(data['pid']);
}

void main() {
  print(passports.where(isValidPassport).length);
}
