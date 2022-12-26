import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/login_by_email.dart';
import 'package:property_trade_app/widgets//google_logo.dart';
import 'package:property_trade_app/widgets//resuable_buttons.dart';
import 'package:property_trade_app/widgets//reusable_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back),
              SizedBox(height: 20,),
              Center(
                child: Image.asset(
                    'assets/images/img.png',
                  height: 200,
                  fit: BoxFit.fill,
                    ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Let's you in",style:TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,

              ),)),
              SizedBox(height: 20,),
              ReusableContainer(width: 1,txt: "Continue with Facebook",borderColor: Colors.grey.withOpacity(.3),iconColor: Colors.blue,icon: Icons.facebook,),
              SizedBox(height: 20,),
              GoogleLogo(size: 20,width: 1,txt: "Continue with Google",),
              SizedBox(height: 20,),
              ReusableContainer(width: 1,txt: "Continue with Apple", borderColor: Colors.grey.withOpacity(.2) , icon: Icons.apple,  ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.3),
                  ),
                  ),
                  const Text(
                    "  or  ",),
                  Expanded(

                    child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(.3),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginByEmail()),);
                  },
                  child: ReusableButtons(txt: "Sign in with password",border_size: 20,)),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                   Text("Don't have an account?",style: TextStyle(color: Colors.grey)),

                   Text(" Sign up",style: TextStyle(color: Color(0xff006dff)),),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
