import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/widgets/google_logo.dart';

class ReusableContainer extends StatelessWidget {
    String txt ;
    Color? txtColor;
    double? height;
    final double width;
     Color? bgcolor;
  final Color borderColor;
  double? fontSize;
   IconData?  icon ;
   Color? iconColor;
  final double icon_size;
  final MainAxisAlignment alignment;
   ReusableContainer({Key? key,this.fontSize,this.height=15, this.iconColor,this.txtColor, this.txt = "", required this.borderColor, this.icon,  this.icon_size = 35, this.alignment= MainAxisAlignment.center,  required this.width, this.bgcolor}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height/height!,
      width: MediaQuery.of(context).size.width/width,
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor
            ),),
            child: icon==null?Center(child: Text(txt!,style: TextStyle(color: txtColor, fontSize: fontSize),)):Text(txt!)==null? Center(child: Icon(icon,color: iconColor,size: icon_size,)):Row(
              mainAxisAlignment: alignment,
              children: [
                Center(child: Icon(icon,color: iconColor,size: icon_size,)),
                SizedBox(width: 10,),
                Text(txt!,style: TextStyle(color: txtColor, fontSize: fontSize),),

              ],
            ),
         );
  }
}
