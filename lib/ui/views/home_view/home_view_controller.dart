import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:pro_task/core/data/models/book_model.dart';
import 'package:pro_task/core/data/models/chapter_model.dart';
import 'package:pro_task/core/data/models/hadith_model.dart';
import 'package:pro_task/core/data/models/section_model.dart';
import 'package:pro_task/core/utils/general_util.dart';

class HomeViewController extends GetxController {
  List<BookModel> bookItems = <BookModel>[];
  List<ChapterModel> itemsChapter = <ChapterModel>[];
  List<SectionModel> itemsSection = <SectionModel>[];
  List<HadithModel> itemsHadith = <HadithModel>[];
  List<List<HadithModel>> itemsHadithSown = <List<HadithModel>>[];

  bool hideAppbar = false;
  int bookNumber = 1;

  @override
  void onInit() async {
    super.onInit();
    await initData();
    getHadith();
  }

  Future<void> initData() async {
    bookItems = await databaseService.getBookItems(id: bookNumber);
    itemsChapter = await databaseService.getChapterItems(id: bookNumber);
    itemsSection = await databaseService.getSectionItems(id: bookNumber);
    itemsHadith = await databaseService.getHadithItems(id: bookNumber);
    update();
  }

  getHadith() {
    for (int index = 0; index < itemsSection.length; index++) {
      itemsHadithSown.add(itemsHadith
          .where((element) => itemsSection[index].id == element.sectionId)
          .toList());
    }
    update();
  }

  handleScroll({required UserScrollNotification scrollNotification}) {
    if (scrollNotification.direction == ScrollDirection.reverse) {
      hideAppbar = true;
      update();
    } else if (scrollNotification.direction == ScrollDirection.forward) {
      hideAppbar = false;
      update();
    }
  }
}




