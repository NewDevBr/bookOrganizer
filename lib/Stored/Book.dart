class Book {
  String title = '';
  String author = '';
  String gender = '';
  DateTime addAt = new DateTime.now();
  bool wasEdited = false;

  Book(String title, String author, String gender) {
    this.title = title;
    this.author = author;
    this.gender = gender;
  }

  get getTitle => this.title;
  get getAuthor => this.author;

  get getGender => this.gender;
  get getAddAt => this.addAt;
  get getWasEdited => this.wasEdited;

  set setTitle(String title) => this.title = title;
  set setAuthor(String author) => this.author = author;
  set setGender(String gender) => this.gender = gender;
  set setAddAt(DateTime addAt) => this.addAt = addAt;
  set setWasEdited(bool wasEdited) => this.wasEdited = wasEdited;
}
