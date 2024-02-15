import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_widget/custom_app_bar.dart';

import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 35,),
          CustomAppBar(title: "Notes", icon: Icons.search, ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


