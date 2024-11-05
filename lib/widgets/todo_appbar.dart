import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget {
  const TodoAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.playlist_add_check,
          color: Colors.white,
          size: 40,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'ToDO App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ],
    );
    
  }
}
