import 'package:calculator/calc_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _State();
}

class _State extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("Calculator")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 37),
          child: Column(
            children: [
              Row(
                children: [
                  CalcButton(text: "C", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "+/-", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "%", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "/", isActionColor: true),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CalcButton(text: "7", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "8", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "9", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "X", isActionColor: true),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CalcButton(text: "4", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "5", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "6", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "-", isActionColor: true),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CalcButton(text: "1", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "2", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "3", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "+", isActionColor: true),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CalcButton(text: "0", isActionColor: false, flex: 2),
                  SizedBox(width: 10),
                  CalcButton(text: ".", isActionColor: false),
                  SizedBox(width: 10),
                  CalcButton(text: "=", isActionColor: false),
                ],
              )
            ],
          ),
        ));
  }
}
