import 'package:flutter/material.dart';

import 'custom_textfeld.dart';

class addNoteBottonSheet extends StatelessWidget {
  const addNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(height: 32,),
       customTextfeld(hint: "title"),
       SizedBox(height: 16,),
       customTextfeld(hint: "contant",maxline: 6),
      ],),
    );
  }
}

