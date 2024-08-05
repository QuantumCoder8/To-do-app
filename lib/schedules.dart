import 'package:flutter/material.dart';
class schedule extends StatelessWidget {
  const schedule({super.key,required this.Name,
  required this.completed,this.onChanged,});
  final String Name;
  final bool completed;
  final Function(bool?)? onChanged;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 17,
        right: 17,
        top: 17,
        bottom: 0,
      ),
      child: Container(
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color:Colors.teal,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Checkbox(
                value: completed,
                onChanged: onChanged
            ),
            Text(
              Name,
              style: TextStyle(
                color: Colors.black,
                fontSize:19,
                decoration: completed
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                decorationColor: Colors.white70,
              ),
            ),
          ],
        ),
      ),


    );
  }
}
