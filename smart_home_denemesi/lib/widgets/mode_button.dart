import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ModeButton extends StatefulWidget {
  dynamic icon;
  String text;

  ModeButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<ModeButton> createState() => _ModeButtonState();
}

class _ModeButtonState extends State<ModeButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              widget.icon,
              size: 36,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(widget.text, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16))
      ],
    );
  }
}
