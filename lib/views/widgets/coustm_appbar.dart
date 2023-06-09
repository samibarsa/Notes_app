import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_search_icon.dart';

class CoustmAppbar extends StatelessWidget {
  const CoustmAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        CoustumSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
