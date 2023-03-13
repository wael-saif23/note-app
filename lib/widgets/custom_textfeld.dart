import 'package:flutter/material.dart';
import 'package:noteapp/contants.dart';

class customTextfeld extends StatelessWidget {
  const customTextfeld({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(
      hintText: "title",
      hintStyle: TextStyle(fontSize: 20,color: kPrimaryColor),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),


          ),);
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color:color?? Colors.white,
          )
          );
  }
}