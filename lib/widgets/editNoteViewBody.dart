import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_textfeld.dart';

import 'custom_app_bar.dart';



class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children:const [
        SizedBox(
              height: 32,
            ),
            customAppBar(title: "Edit Notes",icon: Icons.check),
            SizedBox(height: 50,),
            customTextfeld(hint: "title",),
            SizedBox(height: 16,),
            customTextfeld(hint: "contants",maxline: 6,)
      ],),
    );
  }
}