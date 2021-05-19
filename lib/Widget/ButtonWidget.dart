import 'package:flutter/material.dart';

import '../kConst.dart';

class ButtonWidget extends StatelessWidget {
  final String text;

  const ButtonWidget({this.text}) ;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width - 40,
        height: 50,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: Color(0xFFEEB702),
        ),
        onPressed: () {},
        child: Text(text, style: button),
      ),
    );
  }
}