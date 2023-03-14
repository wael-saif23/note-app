import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/add_bloc_observe.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/viewNotes.dart';

void main() async {
  Bloc.observer = AddBlocObserver();
  await Hive.initFlutter(); // 1
   Hive.registerAdapter(NoteModelAdapter()); //2 add registerAdapter befor add Hive.openBox
  await Hive.openBox<NoteModel>(kNoteBox);//3
 
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const ViewNotes(),
    );
  }
}
