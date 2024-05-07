import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pro_task/core/data/models/book_model.dart';
import 'package:pro_task/core/data/models/chapter_model.dart';
import 'package:pro_task/core/data/models/hadith_model.dart';
import 'package:pro_task/core/data/models/section_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static Database? _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initExistDatabase();
      return _db!;
    } else {
      return _db!;
    }
  }

  initExistDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'hadith_db.db');
    final databaseFile = await rootBundle.load('assets/database/hadith_db.db');
    final bytes = databaseFile.buffer.asUint8List();
    await File(path).writeAsBytes(bytes);
    return openDatabase(path);
  }

  Future<List<SectionModel>> getSectionItems({required int id}) async {
    Database myDb = await db;
    final List<Map<String, dynamic>> maps =
        await myDb.query("section", where: 'book_id =$id');
    return List.generate(maps.length, (index) {
      return SectionModel.fromJson(maps[index]);
    });
  }

  Future<List<BookModel>> getBookItems({required int id}) async {
    Database myDb = await db;
    final List<Map<String, dynamic>> maps =
        await myDb.query("books", where: 'id =$id');
    return List.generate(maps.length, (index) {
      return BookModel.fromJson(maps[index]);
    });
  }

  Future<List<HadithModel>> getHadithItems({required int id}) async {
    Database myDb = await db;
    final List<Map<String, dynamic>> maps =
        await myDb.query("hadith", where: 'book_id =$id');
    return List.generate(maps.length, (index) {
      return HadithModel.fromJson(maps[index]);
    });
  }

  Future<List<ChapterModel>> getChapterItems({required int id}) async {
    Database myDb = await db;
    final List<Map<String, dynamic>> maps =
        await myDb.query("chapter", where: 'book_id =$id');
    return List.generate(maps.length, (index) {
      return ChapterModel.fromJson(maps[index]);
    });
  }
}
