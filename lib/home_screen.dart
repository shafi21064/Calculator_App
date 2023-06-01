
import 'package:calculator_app/components/buttons.dart';
import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  var userInput = '';
  var answer = '0';


  void equalPress(){
    var finalInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.centerRight,
                          child: Text(
                            userInput,
                            style: const TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.centerRight,
                          child: Text(
                            answer,
                            style: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]
                  ),
                ),
              ),

              const Divider(
                height: 25,
                color: greyButtonColor,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalButton(
                          buttonTextName: 'AC',
                          onPressed: () {
                            setState(() {

                              userInput = '';
                              answer = '0';
                            });
                          },
                        ),
                        CalButton(buttonTextName: '+/-', onPressed: () {

                        }),
                        CalButton(buttonTextName: '%', onPressed: () {
                          setState(() {
                            userInput += '%';
                          });
                        }),
                        CalButton(
                          buttonTextName: '/',
                          onPressed: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                          buttonColor: orangeButtonColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(buttonTextName: '7', onPressed: () {
                          setState(() {
                            userInput += '7';
                          });
                        }),
                        CalButton(buttonTextName: '8', onPressed: () {
                          setState(() {
                            userInput += '8';
                          });
                        }),
                        CalButton(buttonTextName: '9', onPressed: () {
                          setState(() {
                            userInput += '9';
                          });
                        }),

                        CalButton(
                          buttonTextName: 'x',
                          onPressed: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                          buttonColor: orangeButtonColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(buttonTextName: '4', onPressed: () {
                          setState(() {
                            userInput += '4';
                          });
                        }),
                        CalButton(buttonTextName: '5', onPressed: () {
                          setState(() {
                            userInput += '5';
                          });
                        }),
                        CalButton(buttonTextName: '6', onPressed: () {
                          setState(() {
                            userInput += '6';
                          });
                        }),
                        CalButton(
                          buttonTextName: '-',
                          onPressed: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                          buttonColor: orangeButtonColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(buttonTextName: '1', onPressed: () {
                          setState(() {
                            userInput += '1';
                          });
                        }),
                        CalButton(buttonTextName: '2', onPressed: () {
                          setState(() {
                            userInput += '2';
                          });
                        }),
                        CalButton(buttonTextName: '3', onPressed: () {
                          setState(() {
                            userInput += '3';
                          });
                        }),
                        CalButton(
                          buttonTextName: '+',
                          onPressed: () {
                            setState(() {
                              userInput += '+';
                            });
                          },
                          buttonColor: orangeButtonColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalButton(buttonTextName: '0', onPressed: () {
                          setState(() {
                            userInput += '0';
                          });
                        }),
                        CalButton(buttonTextName: '.', onPressed: () {
                          setState(() {
                            userInput += '.';
                          });
                        }),
                        CalButton(buttonTextName: 'DEL', onPressed: () {
                          setState(() {
                           userInput = userInput.substring(0, userInput.length - 1);
                          });
                        }),
                        CalButton(
                          buttonTextName: '=',
                          onPressed: () {
                            setState(() {
                              equalPress();
                            });
                          },
                          buttonColor: orangeButtonColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
