import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results.dart';
import '../components/roundIconButton.dart';
import '../components/bottomButton.dart';
import 'package:bmi_calculator/calc_brain.dart';

// const activeCardColour = Color(0xFF1D1E33);
// const inactiveCardColour = Color(0xFF11328);
// const bottomHeight= 80.0;
// const bottomContainerColour= Color(0xFFEB1555);

enum GenderType{
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
 // Color maleCardColour = inactiveCardColour;
  //Color femaleCardcolour = inactiveCardColour;

   GenderType genderselected;
   int height=180;
   int weight=60;
   int age=19;

  //void updateColour(GenderType genderselected) {
    // if(genderselected==GenderType.MALE){
    //   if(maleCardColour==inactiveCardColour){
    //     maleCardColour= activeCardColour;
    //     femaleCardcolour= inactiveCardColour;
    //   }else{
    //     maleCardColour=inactiveCardColour;
    //   }
    // }
    //  else if(genderselected==GenderType.FEMALE){
    //
    //   if(femaleCardcolour==inactiveCardColour){
    //     femaleCardcolour= activeCardColour;
    //     maleCardColour= inactiveCardColour;
    //   }else{
    //     femaleCardcolour=inactiveCardColour;
    //   }
    //
    // }


    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    //child: GestureDetector(
                      //onTap: () {
                        //setState(() {
                         // updateColour(GenderType.MALE);
                        //genderselected=GenderType.MALE;
                        //});
                      //},
                      child: ReusableCard(
                        onPress:(){
                          setState(() {
                            genderselected=GenderType.MALE;
                          });
                        },
                        colour: genderselected == GenderType.MALE ? activeCardColour : inactiveCardColour,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE'),
                      ),
                  //  ),
                  ),
                  Expanded(
                    // child: GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //      updateColour(GenderType.FEMALE);
                    //       genderselected=GenderType.FEMALE;
                    //     });
                    //   },
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            genderselected=GenderType.FEMALE;
                          });
                        },
                        colour: genderselected == GenderType.FEMALE ? activeCardColour : inactiveCardColour,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE'),
                      ),
                    ),
                  //),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                  colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle
                                 //TextStyle(
                          //   fontSize: 50.0,
                          //   fontWeight: FontWeight.w900,
                          // ),
                        ),
                        Text(
                          'cm',
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor:  Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min:120.0 ,
                        max: 220.0,
                       // activeColor:Colors.white,
                       // inactiveColor: Color(0xFF8D8E98),
                         onChanged:(double newvalue){
                          setState(() {
                            height=newvalue.round();
                          });
                         },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                         cardChild: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               'WEIGHT',
                               style: labelTextStyle,
                             ),
                             Text(
                               weight.toString(),
                               style: kNumberTextStyle,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 RoundIconButton(
                                     icon:FontAwesomeIcons.plus,
                                     onPress:(){
                                       setState(() {
                                         weight=weight+1;
                                       });
                                 } ,
                                 ),
                                 SizedBox(
                                   width: 10.0,
                                 ),
                                 RoundIconButton(
                                     icon:FontAwesomeIcons.minus,
                                   onPress: (){
                                     setState(() {
                                       weight=weight-1;
                                     });
                                   },
                                 ),

                                  // FloatingActionButton(
                                  //   backgroundColor: Color(0xFF4C4F5E),
                                  //   mini: true,
                                  //   child: Icon(
                                  //     Icons.add,
                                  //     size: 20.0,
                                  //   )
                                  // ),
                                 //FloatingActionButton(
                                 //     backgroundColor: Color(0xFF4C4F5E),
                                 //     mini: true,
                                 //     child: Icon(
                                 //       Icons.minus,
                                 //       size: 20.0,
                                 //     )
                                 // ),
                               ]
                             )

                           ],
                         ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },),

                            ],
                          )

                      ]

                      ),
                    ),

                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: 'CALCULATE',
                onTap: (){
                  CalculatorBrain calc =  CalculatorBrain(height: height, weight: weight);  // creating object

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> ResultPage(
                          BMIResult: calc.calculateBMI() ,
                          BMIText: calc.getResuly(),
                          interpretation: calc. getInterpretation(),
                        )
                  ),
                  );
                                      //return ResultPage()));
            },
      ),
          ],
        ),
      );
    }
  }

// class BottomButton extends StatelessWidget {
//   BottomButton({@required this.onTap, @required this.buttonTitle});
//  final Function onTap;
//  final String buttonTitle;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//        onTap: onTap,//(){
//       // //Navigator.push(context, MaterialPageRoute(builder: (context){
//       //  // return ResultPage();
//       //
//       // }));
//       // },
//       child: Container(
//         child:Center(
//               child: Text(
//                 buttonTitle,//'CALCULATE',
//               style: kLargeButtonTextStyle,
//
//             ),
//
//            ),
//
//         color: bottomContainerColour,
//         margin: EdgeInsets.only(top: 10.0),
//         width: double.infinity,
//         height: bottomHeight,
//       ),
//     );
//   }
// }
  
  // class RoundIconButton extends StatelessWidget {
  // RoundIconButton({this.icon, this.onPress});
  // final IconData icon;
  // final Function onPress;
  //   @override
  //   Widget build(BuildContext context) {
  //     return RawMaterialButton(
  //       onPressed:onPress,
  //       elevation: 6.0,
  //       child: Icon(icon),
  //       constraints: BoxConstraints.tightFor(
  //         height: 46.0,
  //         width: 46.0,
  //       ),
  //       shape: CircleBorder(),
  //       fillColor: Color(0xFF4C4F5E),
  //
  //     );
  //   }
  // }
  //


