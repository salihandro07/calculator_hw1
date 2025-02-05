import 'package:calculator/app_colors.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int flex;
  final bool isActionColor;
  final Color? color;
  final Function()? OnTap;

  const CalcButton(
      {required this.text,
      this.isActionColor = false,
      this.color,
      this.OnTap,
      this.flex = 1,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: OnTap,
        child: Container(
          height: 77,
          width: 77,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color ??
                (isActionColor ? AppColors.orange : AppColors.darkGrey),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 21, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
