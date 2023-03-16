import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/contants.dart';
import 'package:noteapp/cubit/add_note_cubit/add_note_cubit.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isactive, required this.colors});

  final bool isactive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: colors,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(
              radius: 26,
              backgroundColor: colors,
            ),
          );
  }
}

class ColorsItemList extends StatefulWidget {
  const ColorsItemList({super.key});

  @override
  State<ColorsItemList> createState() => _ColorsItemListState();
}

class _ColorsItemListState extends State<ColorsItemList> {
  int selectIndex = 0;

  
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
              selectIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorsItem(
              colors: kColors[index],
              isactive: selectIndex == index,
            ),
          );
        },
      ),
    );
  }
}
