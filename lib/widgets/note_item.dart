import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/editNoteView.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.trash),
                  color: Colors.black,
                  iconSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
