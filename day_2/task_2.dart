import 'data.dart';

bool isValidPassword(Password password) {
  int minIndex = password.min - 1;
  int maxIndex = password.max - 1;

  return (password.password[minIndex] == password.char &&
          password.password[maxIndex] != password.char) ||
      (password.password[minIndex] != password.char &&
          password.password[maxIndex] == password.char);
}

void main() {
  print(passwords.where(isValidPassword).length);
}
