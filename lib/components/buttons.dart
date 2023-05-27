import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String buttonTextName;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CalButton(
      {Key? key,
      required this.buttonTextName,
      this.buttonColor = greyButtonColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 80,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: buttonColor),
            child: Center(
              child: Text(
                buttonTextName,
                style: const TextStyle(color: textColor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
