import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(
            height: 45,
          ),
          CoustmAppbar()
        ]),
      ),
    );
  }
}
