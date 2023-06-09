import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note_show%20Model_bottom_sheet.dart';
import 'package:note/views/widgets/coustm_Notes_Listview.dart';
import 'package:note/views/widgets/coustm_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const AddNoteShowbottomsheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: CoustmAppbar(),
          ),
          Expanded(
            child: NotesListView(),
          ),
        ]),
      ),
    );
  }
}
