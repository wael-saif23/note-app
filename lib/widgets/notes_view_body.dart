import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubit/notes_cubit.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';
import 'package:noteapp/widgets/note_item.dart';
import 'package:noteapp/widgets/notes_list_view.dart';

class notesViewBody extends StatefulWidget {
  const notesViewBody({super.key});

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

class _notesViewBodyState extends State<notesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).feachAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(title: "Notes", icon: Icons.search),
          Expanded(child: noteListView()),
        ],
      ),
    );
  }
}
