import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lacasa_page/utils/text_styles.dart';
class ContElement{
  static Widget getCont({@required Color firstColor,
  @required Color secondColor,@required String text}){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        gradient: LinearGradient(
          colors: [firstColor,secondColor],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )
      ),
      child: Center(
        child: Expanded(child: Text(text,
          textAlign: TextAlign.center,style: TextStyles.centerTextStyle,)),
      ),
    );
  }
}