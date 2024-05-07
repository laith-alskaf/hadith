import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_task/app/my_app_controller.dart';
import 'package:pro_task/database_sevice/database_service.dart';


MyAppController get myAppController => Get.find<MyAppController>();

DatabaseService get databaseService => Get.find<DatabaseService>();

double get sizeTextTitle => 30.sp; //30  // title home view

double get sizeTextSupHeader => 27.sp; //25   // profile name

double get sizeTextBodyBig => 22.sp; //20

double get sizeTextBody => 20.sp; //18  //menu

double get defaultSizeSmall => 18.sp; //16

double get defaultPadding => 35.w; //16
