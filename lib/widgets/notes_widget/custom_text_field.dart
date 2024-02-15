import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinText,  this.maxLines=1});
 final String hinText;
 final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff62FCD7)),),
        hintText: hinText,
        hintStyle: const TextStyle(color: Color(0xff62FCD7))
      ),
      maxLines: maxLines,
    );
  }
}
