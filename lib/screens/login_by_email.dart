import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/fill_your_profile.dart';
import 'package:property_trade_app/widgets/google_logo.dart';
import 'package:property_trade_app/widgets/resuable_buttons.dart';
import 'package:property_trade_app/widgets/reusable_text_field.dart';

import '../widgets//reusable_container.dart';
class LoginByEmail extends StatefulWidget {
  const LoginByEmail({Key? key}) : super(key: key);

  @override
  State<LoginByEmail> createState() => _LoginByEmailState();
}

class _LoginByEmailState extends State<LoginByEmail> {
  bool _isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.only(top: 15.0, right: 15,left: 15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     InkWell(
         onTap: (){
           Navigator.pop(context);

         },
         child: Icon(Icons.arrow_back)),
    SizedBox(height: 5,),
    Center(
    child: Image.asset(
    'assets/images/img_1.png',
    height: 200,
    fit: BoxFit.fill,
    ),
    ),
    SizedBox(height: 20,),
    Center(child: Text("Login to your account",style:TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,

    ),)),
    SizedBox(height: 20,),
      ReusableTxtField(icon: Icons.email,txt: "Email",),
      ReusableTxtField(icon: Icons.lock,suffix_icon: Icons.visibility_off, txt: 'Password',input_type: true,),
      // SizedBox(height: 5,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              setState(() {
                _isTap =!_isTap;

              });
            },
            child: Icon(
                color: Color(0xff006dff),
                // highlightColor: Colors.amberAccent,
                _isTap? Icons.check_box_rounded :Icons.check_box_outline_blank),
          ),
          SizedBox(width: 5,),
          Text("Remenber me"),
        ],
      ),
      SizedBox(height: 10,),
         InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => FillYourProfilePage()),);

             },
             child: ReusableButtons(txt: "Sign In", border_size: 30,)),
      Align(
        alignment: Alignment.center,
        child: TextButton(onPressed: (){},
          child: Text(
          "Forgot the password?",style: TextStyle(
            color: Color(0xff006dff),
          ),
        ),),
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey.withOpacity(.3),
            ),
          ),
          const Text(
            "  or continue with  ",),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey.withOpacity(.3),
            ),
          ),
        ],
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableContainer(alignment: MainAxisAlignment.center,width: 5, borderColor: Colors.grey.withOpacity(.2) , icon: Icons.apple, ),
          SizedBox(width: 20,),
          GoogleLogo(size: 22,width: 5,),
          SizedBox(width: 20,),
          ReusableContainer(width: 5, borderColor: Colors.grey.withOpacity(.2) , icon: Icons.apple,alignment: MainAxisAlignment.center, ),
        ],
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?",style: TextStyle(color: Colors.grey)),

          Text(" Sign up",style: TextStyle(color: Color(0xff006dff)),),
        ],
      )
    ],
    ),
    ),
        ),

    );
  }
}
