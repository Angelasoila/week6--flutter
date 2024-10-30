import 'package:flutter/material.dart';

class Squaretile extends StatefulWidget {
  final String imagePath;
  const Squaretile({
    super.key,
  required this.imagePath
  });

  @override
  State<Squaretile> createState() => _SquaretileState();
}

class _SquaretileState extends State<Squaretile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        widget.imagePath,
      height: 5,
      ),
    );
  }
}