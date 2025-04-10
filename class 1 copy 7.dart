// Book klassasy
class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);

  void displayInfo() {
    print(
        'Book Title: $title, Author: $author, ISBN: $isbn, Available: $isAvailable');
  }
}

// Member klassasy
class Member {
  String name;
  String memberId;
  List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);

  void borrowBook(Book book) {
    if (book.isAvailable) {
      borrowedBooks.add(book);
      book.isAvailable = false;
      print('$name borrowed "${book.title}".');
    } else {
      print('"${book.title}" is not available for borrowing.');
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      borrowedBooks.remove(book);
      book.isAvailable = true;
      print('$name returned "${book.title}".');
    } else {
      print('$name did not borrow "${book.title}".');
    }
  }

  void displayBorrowedBooks() {
    print('$name\'s Borrowed Books:');
    for (var book in borrowedBooks) {
      print('- ${book.title}');
    }
  }
}

// Library klassasy
class Library {
  String name;
  List<Book> books = [];
  List<Member> members = [];

  Library(this.name);

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  void addMember(Member member) {
    members.add(member);
    print('Member ${member.name} added to the library.');
  }

  void displayAvailableBooks() {
    print('Available Books in $name:');
    for (var book in books) {
      if (book.isAvailable) {
        book.displayInfo();
      }
    }
  }

  void displayAllMembers() {
    print('Members of $name:');
    for (var member in members) {
      print('- ${member.name} (ID: ${member.memberId})');
    }
  }
}

void main() {
  // Kitaphana döredýäris
  var library = Library('Türkmen Kitaphanasy');

  // Kitaplary goşýarys
  library.addBook(Book('Yenilgi', 'J.R.R. Tolkien', '123456789', true));
  library.addBook(Book('Käbir Günler', 'Myrat Bazarov', '987654321', true));
  library
      .addBook(Book('Dünýäniň Zähmeti', 'Khaled Hosseini', '456789123', true));

  // Agzalary goşýarys
  var member1 = Member('Anna', '001');
  var member2 = Member('Berdy', '002');
  library.addMember(member1);
  library.addMember(member2);

  // Kitaplary görkezmek
  library.displayAvailableBooks();

  // Kitap almak we gaýtarmak
  member1.borrowBook(library.books[0]); // Anna "Yenilgi" kitabyny alýar
  member1.borrowBook(library.books[1]); // Anna "Käbir Günler" kitabyny alýar
  member1.displayBorrowedBooks(); // Annanyň alýan kitaplary

  member1.returnBook(library.books[0]); // Anna "Yenilgi" kitabyny gaýtarýar
  member1.displayBorrowedBooks(); // Annanyň alýan kitaplary

  // Agzalary we kitaphanany görkezmek
  library.displayAllMembers();
}
