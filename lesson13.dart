// void main() {
//   Function sum = (a, b) => a + b;

//   print(sum(1, 2));
// }

// void main(List<String> args) {
//   makeTask(doSomething);
// }

// void makeTask(Function task) {
//   print('zapustil zadaca');
//   task();
//   print('wipolnil zadaci');
// }

// void doSomething() {
//   print('hello');
// }
void minMaxTap(List<int> sanlar) {
  int inUly = sanlar[0];
  int inKici = sanlar[0];

  for (var san in sanlar) {
    if (san > inUly) {
      inUly = san;
    }
    if (san < inKici) {
      inKici = san;
    }
  }

  print("Iň uly san: $inUly"); // Türkmen dilinde "Iň uly san" diýilýär
  print("Iň kiçi san: $inKici"); // Türkmen dilinde "Iň kiçi san" diýilýär

  print('in uly san: $inUly');
  print("in kici san: $inKici");
}

void main() {
  List<int> sanlar = [3, 7, 2, 9, 5];
  minMaxTap(sanlar);
}
