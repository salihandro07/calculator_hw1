import 'package:calculator/app_colors.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int flex;
  final bool isActionColor;
  const CalcButton({required this.text, this.isActionColor = false, this.flex = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 77,
        width: 77,
        color: isActionColor? AppColors.orange : AppColors.grey,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
