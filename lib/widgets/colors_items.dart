import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  List<Color> colors = const [
    Color(0xff34FF17),
    Color(0xff10E8AE),
    Color(0xff5010E8),
    Color(0xffFF17D9),
    Color(0xff1F8BFF),
    Color(0xff3E1A0E),
    Color(0xffF1D8B3),
    Color(0xffD3A75C),
    Color(0xffA78A59),
    Color(0xff382720),
    Color(0xff1B2022),
    Color(0xff37795C),
    Color(0xffCB6A74),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              selectIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorsItem(
              colors: colors[index],
              isactive: selectIndex == index,
            ),
          );
        },
      ),
    );
  }
}
