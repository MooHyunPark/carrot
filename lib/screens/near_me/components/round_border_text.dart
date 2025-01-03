import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  final String title;

  final int position;

  RoundBorderText({Key? key, required this.title, required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(width: 0.5, color: Colors.grey),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
