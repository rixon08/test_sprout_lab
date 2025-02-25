import 'dart:io';

void main() {
  print("Input");
  String input = stdin.readLineSync() ?? "";

  print("Output");
  bool result = checkNameInput(input);
  print("${result}");
}

bool checkNameInput(String input) {
  List<String> listInput = input.split(" ");
  if (listInput.length > 1 && listInput.length <= 3) {
    return checkEachWordInput(listInput);
  } else {
    return false;
  }
}

bool checkEachWordInput(List<String> listInput) {
  bool result = true;
  for (int i = 0; i < listInput.length; i++) {
    String data = listInput[i];
    if (!isInitial(data) && !isWord(data)) {
      result = false;
      break;
    } else if (i == 1 &&
        listInput.length == 3 &&
        isInitial(listInput[0]) &&
        isWord(data)) {
      result = false;
      break;
    } else if (i + 1 == listInput.length && isInitial(data)) {
      result = false;
      break;
    }
  }
  return result;
}

bool isInitial(String initial) {
  RegExp regex = RegExp(r'^[A-Z]\.$');
  return regex.hasMatch(initial);
}

bool isWord(String word) {
  RegExp regex = RegExp(r'^[A-Z][a-zA-Z]+$');
  return regex.hasMatch(word);
}
