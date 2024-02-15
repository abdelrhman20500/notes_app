import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_widget/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_widget/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 35,),
          CustomAppBar(title: "EditNotes", icon: Icons.edit,),
          SizedBox(height: 12,),
          CustomTextField(hinText: "title"),
          SizedBox(height: 16,),
          CustomTextField(hinText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
