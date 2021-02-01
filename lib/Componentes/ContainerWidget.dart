import 'package:flutter/material.dart';

Widget containerShadowHeight(String text, Color color, double height) {
  return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.2,
        ),
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
          )
        ],
      ),
      height: height,
      //color: Colors.white,
      child: Center(child: Text(text)));
}

Widget containerShadowHeightAndWidth(
    context, Text text, Color color, double height, double width,
    {double top = 0,
    double right = 0,
    double left = 0,
    double bottom = 0,
    BoxShape shape = BoxShape.rectangle,
    dynamic color2 = Colors.white,
    Icon icon,
    bool border = false,
    Color borderColor,
    bool centerText = false,
    Icon incoBeforeText,
    bool animate = false,
    bool arrowNext = false,
    double arrowLeft = 50,
    dynamic richText: false}) {
  var rotation = MediaQuery.of(context).orientation;

  bool textRinch = true;

  if (rotation == Orientation.landscape) {
    width = width * 1.0499;
    height = height * 2;
  }

  if (richText != false) {
    print('IsTrue');
    textRinch = false;
  }

  return animate == false
      ? Container(
          margin: EdgeInsets.only(
              top: top, right: right, left: left, bottom: bottom),
          decoration: border == false ? BoxDecoration(
            shape: shape,

            boxShadow: [
              BoxShadow(
                color: color,
                blurRadius: 1.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
          ) :  BoxDecoration(
            
            borderRadius: BorderRadius.circular(5),
            
            border: border == true ? Border.all(width: 1.0, color: borderColor) : null,

            boxShadow: [
              BoxShadow(
                color: color,
                blurRadius: 1.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
          ),
          width: width,
          height: height,
          //color: Colors.white,

          child: textRinch
              ? incoBeforeText == null
                  ? icon == null
                      ? centerText ? Center(child: text) : text
                      : icon
                  : Row(children: <Widget>[
                      incoBeforeText,
                      SizedBox(width: 15),
                      Center(child: text),
                      arrowNext == true ? Container(margin: EdgeInsets.only(left: arrowLeft), child: Icon(Icons.chevron_right, color: Colors.white)) : SizedBox()
                    ])
              : richText)

      //-------------------------------------------CONTAINER ANIMADO !!!!--------------------------------------------------------------------
      : AnimatedContainer(
          //width: size.width / 1.1,
          margin: EdgeInsets.only(
              top: top, right: right, left: left, bottom: bottom),
          // color: corteste,

          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color, color2]),
            //color: corteste
            shape: shape,
            //border: Border.all(width: 0.2),
          ),

          duration: Duration(seconds: 1),
          //curve: Curves.fastOutSlowIn,
          //curve: Curves.bounceOut,
          //curve: Curves.fastLinearToSlowEaseIn,

          child: Container(
              //width: size.width / 90,
              //margin: EdgeInsets.only(top: 20),
              //color: corteste,

              child: Container(
                  //margin: EdgeInsets.only(top: top, right: right, left: left, bottom: bottom),

                  width: width,
                  height: height,
                  //color: Colors.white,
                  child: Center(child: text))),
        );
}
