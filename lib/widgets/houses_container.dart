import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/colors.dart';

class HousesContainer extends StatelessWidget {
  const HousesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(color: Styles.bgColor1,
        borderRadius: BorderRadius.circular(25),
      ),
        height: MediaQuery.of(context).size.height*.378,
        width: MediaQuery.of(context).size.width*.83,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height*.28,
            child: Image.asset("assets/images/img_4.png",),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CRAFTSMAN HOUSE",style: Styles.headLineStyle1.copyWith(color: Colors.white),),
                Text("520 N Btoudry Ave Los Angeles",style: Styles.textStyle.copyWith(color: Colors.white.withOpacity(.42)),),
                Row(
                  children: [
                   Image.asset("assets/images/img_5.png",height: 20,),
                    Text("  4 Beds",style: Styles.textStyle.copyWith(color: Colors.white.withOpacity(.42)),),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/img_6.png",height: 20,),
                    Text("  4 Baths",style: Styles.textStyle.copyWith(color: Colors.white.withOpacity(.42)),),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/img_7.png",height: 20,),
                    Text("  1 Garage",style: Styles.textStyle.copyWith(color: Colors.white.withOpacity(.42)),),
                  ],
                )
              ],
            ),
          )

        ],
      )
    );
  }
}
