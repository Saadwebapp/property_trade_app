import 'package:flutter/material.dart';
import 'package:property_trade_app/utils/colors.dart';
import 'package:property_trade_app/widgets/reusable_container.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Detail",style: Styles.headLineStyle2,),

                  InkWell(
                      onTap: (){
                        Navigator.pop(context);

                      },
                      child: ReusableContainer(borderColor: Styles.bgColor2, width: 6.5,height: 14,bgcolor: Styles.bgColor2,icon: Icons.arrow_back_ios_new,iconColor: Styles.bgColor1,alignment: MainAxisAlignment.center,icon_size: 28,)),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),

              Center(child: Image.asset("assets/images/img_9.png",height: MediaQuery.of(context).size.height/2.95,)),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("CRAFTSMAN HOUSE",style: Styles.headLineStyle2,),
                      SizedBox(height: MediaQuery.of(context).size.height*.009,),
                      Text("520 N Beaudry Ave, Los Angeles",style: Styles.headLineStyle1.copyWith(fontSize: 17.4),),

                    ],
                  ),
                  ReusableContainer(borderColor: Styles.bgColor2, width: 6.5,height: 14,bgcolor: Styles.bgColor2,icon: Icons.bookmark_border,iconColor: Styles.bgColor1.withOpacity(.8),alignment: MainAxisAlignment.center,icon_size: 30,),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/img_5.png",height: 20,),
                  Text("  4 Beds",style: Styles.textStyle.copyWith(fontSize: 17),),
                  const SizedBox(width: 10,),
                  Image.asset("assets/images/img_6.png",height: 20,),
                  Text("  4 Baths",style: Styles.textStyle.copyWith(fontSize: 17),),
                  const SizedBox(width: 10,),
                  Image.asset("assets/images/img_7.png",height: 20,),
                  Text("  1 Garage",style: Styles.textStyle.copyWith(fontSize: 17),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetweeween,
                children: [
                  Image.asset("assets/images/img_10.png",height: MediaQuery.of(context).size.height*.06,),
            
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 90),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rebecca Tetha",style: Styles.headLineStyle1.copyWith(fontSize: 14),),
                          Text("Owner Craftsman House",style: Styles.textStyle.copyWith(fontSize: 10),),
                        ],
                      ),
                    ),
                    ReusableContainer(txt: "call",borderColor: Styles.bgColor1, width: 4.6,height: 26,bgcolor: Styles.bgColor1,icon: Icons.call,iconColor: Styles.primaryColor,alignment: MainAxisAlignment.center,icon_size: 25,txtColor: Styles.primaryColor,fontSize: 18,),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/75,),

              Text("Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 ",style: Styles.headLineStyle3.copyWith(fontSize: 12,)),
              Text("garahe. amazing curb oppeal and enterain areawater ",style: Styles.headLineStyle3.copyWith(fontSize: 12,)),
              Row(
                children: [
                  Text("vews. Tons of built-ins & extras.",style: Styles.headLineStyle3.copyWith(fontSize: 12,)),
                  Text("Read More",style: Styles.textStyle.copyWith(fontSize: 12,)),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/60,),

              Text("Gallery",style: Styles.headLineStyle1,),
              SizedBox(height: MediaQuery.of(context).size.height*.009,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/img_11.png",height: MediaQuery.of(context).size.height*.08,),
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  Image.asset("assets/images/img_12.png",height: MediaQuery.of(context).size.height*.08,),
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  Image.asset("assets/images/img_13.png",height: MediaQuery.of(context).size.height*.08,),
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  Image.asset("assets/images/img_14.png",height: MediaQuery.of(context).size.height*.08,),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.009,),

              Text("Price",style: Styles.headLineStyle1,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$5990000",style: Styles.headLineStyle2,),
                  ReusableContainer(txt: "BUY NOW",txtColor: Styles.primaryColor,borderColor: Styles.bgColor1, width: 3.5,height: 25,bgcolor: Styles.bgColor1,)

                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
