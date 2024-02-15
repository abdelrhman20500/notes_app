import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
 final String title;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(title, style: const TextStyle(color: Colors.white, fontSize: 26),),
        const Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
    final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)
      ),
      child: IconButton(onPressed: (){},
          icon: Icon(icon, size: 28,)
      ),
    )
    ;
  }
}
