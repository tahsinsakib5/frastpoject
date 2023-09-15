// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:poject/homepage.dart';

void main()async{
 WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
 Box box = await Hive.openBox("countryname");
 box.put("sakib","bangala");

  runApp(const MyApp());

}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
    );
  }
}