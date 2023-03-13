import 'package:flutter/material.dart';
import 'package:noteapp/widgets/note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: noteItem(),
        );
      },
    );
  }
}