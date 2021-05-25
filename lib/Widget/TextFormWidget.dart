import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {

  final IconData icon;
  final String hint;

  const TextFormWidget({@required this.icon,@required this.hint});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF4A4A54),
      ),
      child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none),
      ),
    );
  }
}