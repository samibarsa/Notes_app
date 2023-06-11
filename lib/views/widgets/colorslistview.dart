import 'package:flutter/material.dart';

class Colorsitem extends StatelessWidget {
  final Color color;
  final bool isActive;

  const Colorsitem({super.key, required this.color, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: isActive == true
          ? CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 36,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 38,
              backgroundColor: color,
            ),
    );
  }
}

class ColorsitemListview extends StatefulWidget {
  const ColorsitemListview({super.key});

  @override
  State<ColorsitemListview> createState() => _ColorsitemListviewState();
}

class _ColorsitemListviewState extends State<ColorsitemListview> {
  int currentindex = 0;
  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentindex = index;
            setState(() {});
          },
          child: Colorsitem(
            color: colors[index],
            isActive: currentindex == index,
          ),
        ),
      ),
    );
  }
}
