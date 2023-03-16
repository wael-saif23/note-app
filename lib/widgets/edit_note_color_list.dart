import 'package:flutter/material.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/colors_items.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _ColorsItemListState();
}

class _ColorsItemListState extends State<EditNoteColorsList> {
  late int colorIndex;
  @override
  void initState() {
    colorIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              colorIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorsItem(
              colors: kColors[index],
              isactive: colorIndex == index,
            ),
          );
        },
      ),
    );
  }
}
