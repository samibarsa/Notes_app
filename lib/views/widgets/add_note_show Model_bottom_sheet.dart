import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubites/cubit/add_note_cubit.dart';
import 'package:note/views/widgets/add_note_form.dart';

class AddNoteShowbottomsheet extends StatelessWidget {
  const AddNoteShowbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSucsess) {
              Navigator.pop(context);
            } else if (state is AddNoteFailuer) {
              // ignore: avoid_print
              print("Ther was an error ${state.arrMessage}}");
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: SingleChildScrollView(child: const AddNoteForm()));
          },
        ),
      ),
    );
  }
}
