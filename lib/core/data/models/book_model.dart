class BookModel {
  int? id;
  String? title;
  String? titleAr;
  int? numberOfHadis;
  String? abvrCode;
  String? bookName;
  String? bookDescr;

  BookModel(
      {this.id,
      this.title,
      this.titleAr,
      this.numberOfHadis,
      this.abvrCode,
      this.bookName,
      this.bookDescr});

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    titleAr = json['title_ar'];
    numberOfHadis = json['number_of_hadis'];
    abvrCode = json['abvr_code'];
    bookName = json['book_name'];
    bookDescr = json['book_descr'];
  }

  Map<String, dynamic> toJson() {
     final Map<String, dynamic> data =<String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['titleAr'] = titleAr;
    data['number_of_hadis'] = numberOfHadis;
    data['abvr_code'] = abvrCode;
    data['book_name'] = bookName;
    data['book_descr'] = bookDescr;
    return data;
  }
}
