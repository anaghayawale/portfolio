import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatefulWidget {
  final IconData icon;
  final Color defaultColor;
  final Color hoverColor;
  final String url;

  const SocialIcon({
    Key? key,
    required this.icon,
    required this.defaultColor,
    required this.hoverColor,
    required this.url,
  }) : super(key: key);

  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchURL(widget.url);
      },
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Icon(
        widget.icon,
        color: isHovered ? widget.hoverColor : widget.defaultColor,
        size: 50,
      ),
    );
  }

  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
