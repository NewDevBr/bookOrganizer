import 'package:book_organizer/Stored/book.dart';

class BooksService {
  List<Book> books = <Book>[];

  get getBooks => this.books;

  add(Book book) {
    Book bookExists =
        this.books.firstWhere((element) => book.title == element.title);
    if (bookExists.title != "") {
      this.books.add(book);
    }
  }

  remove(Book book) {
    int index = this.books.indexOf(book);
    this.books.removeAt(index);
  }

  edit(Book book) {
    Book editingBook =
        this.books.firstWhere((element) => element.title == book.title);
    editingBook.setTitle = book.title;
    editingBook.setAuthor = book.author;
    editingBook.setGender = book.gender;
    editingBook.setWasEdited = book.getWasEdited;
  }
}
