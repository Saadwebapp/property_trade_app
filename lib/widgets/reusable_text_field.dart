import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableTxtField extends StatelessWidget {
   IconData? icon ;
  IconData? suffix_icon;
  bool input_type;
  final String txt;

   ReusableTxtField({Key? key, this.input_type=false, this.icon, this.suffix_icon, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.04),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: Colors.grey.withOpacity(.1)
          ),),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextFormField(
            obscureText: input_type,
            decoration: InputDecoration(
              // filled: true, //<-- SEE HERE
              // fillColor: Colors.grey.withOpacity(.2),

              border: InputBorder.none,
            icon: Icon(icon),
                suffixIcon: Icon(suffix_icon),
                hintText: txt,
            ),
          ),
        ),
      ),
    );
  }
}
