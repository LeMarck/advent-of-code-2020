import 'data.dart';

bool isValidPassword(Password password) {
  List<RegExpMatch> matches = new RegExp(password.char).allMatches(password.password).toList();

  return password.min <= matches.length && matches.length <= password.max;
}

void main() {
  print(passwords.where(isValidPassword).length);
}
