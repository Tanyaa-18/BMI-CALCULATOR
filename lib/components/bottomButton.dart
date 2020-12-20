import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,//(){
      // //Navigator.push(context, MaterialPageRoute(builder: (context){
      //  // return ResultPage();
      //
      // }));
      // },
      child: Container(
        child:Center(
          child: Text(
            buttonTitle,//'CALCULATE',
            style: kLargeButtonTextStyle,
          ),
        ),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomHeight,
      ),
    );
  }
}