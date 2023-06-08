import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_search_icon.dart';

class CoustmAppbar extends StatelessWidget {
  const CoustmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: const [
        Text(
          "Notes",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CoustumSearchIcon()
      ],
    );
  }
}
