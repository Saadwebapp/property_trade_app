import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/Discover_property.dart';

import '../widgets/resuable_buttons.dart';
import '../widgets/reusable_text_field.dart';
class FillYourProfilePage extends StatelessWidget {
  const FillYourProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: (
              Column(
                children: [
                  Row(
                    children:  [
                       InkWell(
                           onTap: (){
                             Navigator.pop(context);

                           },
                           child: Icon(Icons.arrow_back)),
                      SizedBox(width: 20,),
                      Text("Fill Your Profile",style: TextStyle(
                          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Image.asset(
                      'assets/images/img_2.png',
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 25.0),
                     child: ReusableTxtField(txt: "Nickname",),
                   ),

                  ReusableTxtField(txt: "Nickname",),
                  ReusableTxtField(txt: "Date of Birth", suffix_icon: Icons.calendar_month_rounded,),
                  ReusableTxtField(txt: "Email",suffix_icon:  Icons.mail_outline,),
                  ReusableTxtField(txt: "Gender", suffix_icon: Icons.arrow_drop_down,),

                  SizedBox(height: 40,),

                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverProperty()),);

                      },
                      child: ReusableButtons(txt: "Continue", border_size: 30))


                ],
              )
              ),
            ),
          ),
        ),
    );
  }
}
