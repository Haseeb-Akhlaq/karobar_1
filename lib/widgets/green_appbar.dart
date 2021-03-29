import 'package:flutter/material.dart';

class GreenAppBar extends StatelessWidget {
  final String title;

  const GreenAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFd0f1dd),
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
    );
  }
}
