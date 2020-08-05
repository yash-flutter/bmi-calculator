import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Icon_Content.dart';
import 'package:bmi_calculator/ReUseAbleCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selected;
  int height= 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: () {
                setState(() {
                  selected=null;
                  height=180;
                });
              },
              splashColor: Color(0xFFEA1556),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected=Gender.male;
                      });
                    },
                    colour: selected==Gender.male?activeCard:inactiveCard,
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected=Gender.female;
                      });
                    },
                    colour: selected==Gender.female?activeCard:inactiveCard,
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
                colour: activeCard,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',style: lableText,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString() ,style: numberText,),
                        Text('cm',style: lableText,)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEA1556),
                        overlayColor: Color(0x29EA1556),

                      ),
                      child: Slider(
                        value: height.roundToDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue)
                        {
                          setState(() {
                              height=newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: activeCard,
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: activeCard,
                  ))
                ],
              ),
            ),
            Container(
              color: Color(0xFFEA1556),
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                'CALCULATE',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
            ),
          ],
        ));
  }
}
