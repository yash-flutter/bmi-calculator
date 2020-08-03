import 'package:bmi_calculator/ReUseAbleCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  )),
                  Expanded(child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      cardChild: IconContent(
                        gender: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  )),
                  Expanded(child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ))
                ],
              ),
            ),
            Container(
              color: Color(0xFFEA1556),
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Center(child: Text('CALCULATE',style: TextStyle(color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 25),)),
            ),
          ],
        ));
  }
}