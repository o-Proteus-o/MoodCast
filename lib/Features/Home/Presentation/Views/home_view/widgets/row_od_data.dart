import 'package:flutter/material.dart';

class RowOfData extends StatelessWidget {
  final IconData icon;
  final String text;
  const RowOfData({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.blueGrey[300],
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [Icon(icon), Text(text, style: TextStyle(fontSize: 16))],
          ),
        ),
      ],
    );
  }
}
