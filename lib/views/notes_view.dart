import 'package:flutter/material.dart';
import 'package:note/views/widgets/coustm_Notes_Listview.dart';
import 'package:note/views/widgets/coustm_appbar.dart';
import 'package:note/views/widgets/coustm_note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          const SizedBox(
            height: 45,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: CoustmAppbar(),
          ),
          const Expanded(child: NotesListView()),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          )
        ]),
      ),
    );
  }
}
