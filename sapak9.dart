class Book {
  String title;
  Book(this.title);
  void read() => print("Читаем книгу \"$title\"");
}

class File {
  int size = 0; // размер файла
  void download() => print("Загружаем файл");
}

class Ebook extends Book implements File {
  @override
  int size;
  Ebook(super.title, this.size);
  @override
  void download() => print("Загружаем книгу \"$title\" размером $size Мб");
}

void main() {
  Ebook ebook = Ebook("Dart и Flutter за 1 день.", 24);
  ebook.read();
  ebook.download();
}
