import 'package:calculator_app/components/buttons.dart';
import 'package:calculator_app/components/upper_part.dart';
import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
            children: [
             const UpperPart(),
              const Divider(height: 25, color: greyButtonColor,),
              Column(
                children: [
                  Row(
                    children: [
                      CalButton(
                        buttonTextName: 'AC',
                        onPressed: () {},
                      ),
                      CalButton(buttonTextName: '+/-', onPressed: () {}),
                      CalButton(buttonTextName: '%', onPressed: () {}),
                      CalButton(
                        buttonTextName: '/',
                        onPressed: () {},
                        buttonColor: orangeButtonColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalButton(buttonTextName: '7', onPressed: () {}),
                      CalButton(buttonTextName: '8', onPressed: () {}),
                      CalButton(buttonTextName: '9', onPressed: () {}),
                      CalButton(
                        buttonTextName: 'x',
                        onPressed: () {},
                        buttonColor: orangeButtonColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalButton(buttonTextName: '4', onPressed: () {}),
                      CalButton(buttonTextName: '5', onPressed: () {}),
                      CalButton(buttonTextName: '6', onPressed: () {}),
                      CalButton(
                        buttonTextName: '-',
                        onPressed: () {},
                        buttonColor: orangeButtonColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalButton(buttonTextName: '1', onPressed: () {}),
                      CalButton(buttonTextName: '2', onPressed: () {}),
                      CalButton(buttonTextName: '3', onPressed: () {}),
                      CalButton(
                        buttonTextName: '+',
                        onPressed: () {},
                        buttonColor: orangeButtonColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalButton(buttonTextName: '0', onPressed: () {}),
                      CalButton(buttonTextName: '.', onPressed: () {}),
                      CalButton(buttonTextName: 'DEL', onPressed: () {}),
                      CalButton(
                        buttonTextName: '=',
                        onPressed: () {},
                        buttonColor: orangeButtonColor,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
