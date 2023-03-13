import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';
import 'package:noteapp/widgets/note_item.dart';
import 'package:noteapp/widgets/notes_list_view.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          customAppBar(title: "Notes",icon: Icons.search),
          Expanded(child: noteListView()),
        ],
      ),
    );
  }
}


