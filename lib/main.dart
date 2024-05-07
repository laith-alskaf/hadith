import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pro_task/app/my_app.dart';
import 'package:pro_task/app/my_app_controller.dart';
import 'package:pro_task/database_sevice/database_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  Get.put(DatabaseService());
  Get.put(MyAppController());
  runApp(const MyApp());
}
