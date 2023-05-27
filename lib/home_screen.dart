import 'package:calculator_app/components/buttons.dart';
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
            Row(
              children: [
                CalButton(buttonTextName: 'AC',),
                CalButton(buttonTextName: '+/-',),
                CalButton(buttonTextName: '%',),
                CalButton(buttonTextName: '/', buttonColor: orangeButtonColor,),
              ],
            ),
            Row(
              children: [
                CalButton(buttonTextName: '7',),
                CalButton(buttonTextName: '8',),
                CalButton(buttonTextName: '9',),
                CalButton(buttonTextName: 'x', buttonColor: orangeButtonColor,),
              ],
            ),
            Row(
              children: [
                CalButton(buttonTextName: '4',),
                CalButton(buttonTextName: '5',),
                CalButton(buttonTextName: '6',),
                CalButton(buttonTextName: '-', buttonColor: orangeButtonColor,),
              ],
            ),
            Row(
              children: [
                CalButton(buttonTextName: '1',),
                CalButton(buttonTextName: '2',),
                CalButton(buttonTextName: '3',),
                CalButton(buttonTextName: '+', buttonColor: orangeButtonColor,),
              ],
            ),
            Row(
              children: [
                CalButton(buttonTextName: '0',),
                CalButton(buttonTextName: '.',),
                CalButton(buttonTextName: 'DEL',),
                CalButton(buttonTextName: '=', buttonColor: orangeButtonColor,),
              ],
            )
          ],
        )
      ),
    );
  }
}
