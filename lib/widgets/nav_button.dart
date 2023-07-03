import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final String text;

  const NavButton({Key? key, required this.text}) : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Add your button press logic here
      },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.pink; // Set the desired color for the hover state
            }
            return Colors.black; // Set the default color
          },
        ),
        overlayColor: MaterialStateProperty.all<Color>(
            Colors.transparent), // Set transparent overlay color
      ),
      child: Text(
        widget.text,
        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
      ),
    );
  }
}
