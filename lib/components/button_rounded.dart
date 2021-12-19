import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logininterface/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  Widget build(BuildContext context) {
    @override
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.8,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        onPressed: () {},
        color: color,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
