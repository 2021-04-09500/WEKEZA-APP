import 'package:flutter/material.dart';

class HoverLink extends StatefulWidget {
  final String text;
  final TextStyle defaultStyle;
  final TextStyle hoverStyle;
  final VoidCallback onTap;

  HoverLink({
    required this.text,
    required this.defaultStyle,
    required this.hoverStyle,
    required this.onTap,
  });

  @override
  _HoverLinkState createState() => _HoverLinkState();
}

class _HoverLinkState extends State<HoverLink> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: isHovered ? widget.hoverStyle : widget.defaultStyle,
        ),
      ),
    );
  }
}
