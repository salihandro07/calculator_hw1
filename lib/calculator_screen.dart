import 'package:calculator/app_colors.dart';
import 'package:calculator/calc_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _State();
}

class _State extends State<CalculatorScreen> {
  var screenValue = "0";
  var result = "0";
  var firstNum = "0";
  var secondNum = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 37),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 1,
                        right: 1,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 35),
                            child: Text(screenValue,
                                style: TextStyle(
                                    fontSize: 56, color: Colors.white)))),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CalcButton(
                              text: "C",
                              color: AppColors.grey,
                              OnTap: () {
                                setState(() {
                                  screenValue = '0';
                                });
                              }),
                          SizedBox(width: 10),
                          CalcButton(text: "+/-", color: AppColors.grey),
                          SizedBox(width: 10),
                          CalcButton(text: "%", color: AppColors.grey),
                          SizedBox(width: 10),
                          CalcButton(text: "/", isActionColor: true,
                          OnTap: (){
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CalcButton(
                            text: "7",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "7";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "8",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "8";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "9",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "9";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(text: "X", isActionColor: true),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CalcButton(
                            text: "4",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "4";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "5",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "5";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "6",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "6";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(text: "-", isActionColor: true),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CalcButton(
                            text: "1",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "1";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "2",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "2";
                              });
                            },
                          ),
                          SizedBox(width: 10),
                          CalcButton(
                            text: "3",
                            isActionColor: false,
                            OnTap: () {
                              setState(() {
                                screenValue =
                                    screenValue == '0' ? '' : screenValue;
                                screenValue += "3";
                              });
                            },
                          ),
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
                  ))
            ],
          ),
        ));
  }
}
