import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_widget/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          height: MediaQuery.of(context).size.height*0.5,
        child: const Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hinText: "title",
            ),
            SizedBox(height: 12,),
            CustomTextField(
              hinText: "title",
              maxLines: 5,
            ),
            Spacer(),
            CustomBottom(),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.pop(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff62FCD7)
        ),
        child: const Center(child: Text("Add", style: TextStyle(color: Colors.black,
        fontSize: 16, fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
