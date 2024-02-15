import 'package:flutter/material.dart';
import 'add_notes_bottom_sheet.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              ),
              context: context,
              isScrollControlled: true,
              builder: (context)
          {
            return  Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: const AddNotesBottomSheet(),
            );
          }
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

