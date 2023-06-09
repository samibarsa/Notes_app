import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_appbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CoustmAppbar(title: 'Edit Note', icon: Icons.check)
        ],
      ),
    );
  }
}
