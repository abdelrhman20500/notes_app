import 'package:flutter/material.dart';
import 'package:notes_app/ui/screen/Edit%20_Notes/edit_notes_screen.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(context, EditNotesScreen.routeName);
      },
      child: Container(
        padding: const EdgeInsets.only(
            top: 22, bottom: 22, left: 16
        ),
        decoration: BoxDecoration(
            color: const Color(0xffFFCCB0),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutter Tips", style: TextStyle(
                  fontSize:26, color: Colors.black),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text("Build your career with tharwat samy", style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),),
              ),
              trailing: IconButton(onPressed: (){},
                  icon: const Icon(Icons.delete,size: 32, color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text("May2 ,2024", style: TextStyle(color: Colors.black.withOpacity(0.4),
                  fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}
