import 'package:flutter/material.dart';
import 'package:matrimony_bright_weddings/config/colors.dart';
import 'package:matrimony_bright_weddings/config/utils.dart';

class CircleComponent extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final int stepNumber;
  final VoidCallback onTap;

  CircleComponent({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.stepNumber,
    required this.onTap,
  });

  @override
  _CircleComponentState createState() => _CircleComponentState();
}

class _CircleComponentState extends State<CircleComponent> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
          child: GestureDetector(
            onTap: widget.onTap,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _isHovered ? Colors.blueAccent : Color(0xFF4facfe),
              ),
              width: 140,
              height: 140,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      widget.icon,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: Text(
                        '${widget.stepNumber}',
                        style: FontStyles.stepText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: widget.onTap,
          child: Text(
            widget.title,
            style: FontStyles.normalText,
          ),
        ),
        SizedBox(height: 5),
        Text(
          widget.subtitle,
          textAlign: TextAlign.center,
          style: FontStyles.bodyText,
        ),
      ],
    );
  }
}
