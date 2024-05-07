class ChapterModel {
  int? id;
  int? chapterId;
  int? bookId;
  String? title;
  int? number;
  String? hadisRange;
  String? bookName;

  ChapterModel(
      {this.id,
        this.chapterId,
        this.bookId,
        this.title,
        this.number,
        this.hadisRange,
        this.bookName});

  ChapterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chapterId = json['chapter_id'];
    bookId = json['book_id'];
    title = json['title'];
    number = json['number'];
    hadisRange = json['hadis_range'];
    bookName = json['book_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['id'] = id;
    data['chapter_id'] = chapterId;
    data['book_id'] = bookId;
    data['title'] = title;
    data['number'] = number;
    data['hadis_range'] = hadisRange;
    data['book_name'] = bookName;
    return data;
  }
}