import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sampleproj/ProviderLogin.dart';


class Splash1 extends StatefulWidget {
  const Splash1({ Key? key }) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => providersignin())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 526.0, middle: 0.4),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/splashlogoregister.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class two extends StatefulWidget {
//   const two({ Key? key }) : super(key: key);

//   @override
//   State<two> createState() => _twoState();
// }

// class _twoState extends State<two> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//           ()=>Navigator.pushReplacement(context,
//                                         MaterialPageRoute(builder:
//                                                           (context) => 
//                                                           SecondScreen()
//                                                          )
//                                        )
//          );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child:FlutterLogo(size:MediaQuery.of(context).size.height)
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//         child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }