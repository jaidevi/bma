import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sampleproj/Providerregisterview/PersonalInfo.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class bmaRegisterPersonalInfo extends StatelessWidget {
  bmaRegisterPersonalInfo({ Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    

    double _value;
    int age;
    checkval(int age) {
      print(age);
      Slider(
        label: "Select Age",
        value: age.toDouble(),
        onChanged: (value) {
          print(value);
          setState(() {
            age = value.toInt();
            print(age);
          });
        },
        min: 5,
        max: 100,
      );
    }

    return Scaffold(
        body: 
        PersonalinfoAuthform()
        

  
  );
  
}

  void setState(Null Function() param0) {}
}


