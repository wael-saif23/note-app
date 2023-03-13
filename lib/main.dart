import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/views/viewNotes.dart';

void main()async {

  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const noteApp());
}


class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark , fontFamily: "Poppins"),
      home: const viewNotes(),
    );
  }
}

