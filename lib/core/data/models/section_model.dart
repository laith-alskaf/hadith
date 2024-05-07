class SectionModel {
  int? id;
  int? bookId;
  String? bookName;
  int? chapterId;
  int? sectionId;
  String? title;
  String? preface;
  String? number;

  SectionModel(
      {this.id,
      this.bookId,
      this.bookName,
      this.chapterId,
      this.sectionId,
      this.title,
      this.preface,
      this.number});

  SectionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookId = json['book_id'];
    bookName = json['book_name'];
    chapterId = json['chapter_id'];
    sectionId = json['section_id'];
    title = json['title'];
    preface = json['preface'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['book_id'] = bookId;
    data['book_name'] = bookName;
    data['chapter_id'] = chapterId;
    data['section_id'] = sectionId;
    data['title'] = title;
    data['preface'] = preface;
    data['number'] = number;
    return data;
  }
}
