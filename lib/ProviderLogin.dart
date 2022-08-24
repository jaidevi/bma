import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproj/Controller/Authcontroller.dart';

import 'package:sampleproj/Providerregisterview/bma_register_personal_info.dart';

// ignore: camel_case_types
class providersignin extends StatelessWidget {
  const providersignin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Authcontroller controller = Get.put(Authcontroller());
    return 
    Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/backgnd.png'), fit: BoxFit.cover),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
                child: Image(
                    image: AssetImage('assets/images/splashlogoregister.png')),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 30,
                                        color: Color(0xff3b3a3a),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 0, 0, 4),
                                      child: Text(
                                        'Please enter your mobile number',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          color: Color(0xff9a9a9a),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Form(
                                  key: controller.formKey0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12.0, 8, 12, 0),
                                    child: TextFormField(
                                      validator: (value) {
                                        return controller
                                            .mobileValidator(value!);
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: "Enter Mobile",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide:
                                              BorderSide(color: Colors.red),
                                        ),
                                      ),
                                      onSaved: (value) {
                                        controller.loginmobile = value!;
                                      },
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 15, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      bmaRegisterPersonalInfo()));
                                        },
                                        child: Text(
                                          'Signup Now',
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: FlatButton(
                                      color: Colors.red,
                                      textColor: Colors.green,
                                      child: Text("Submit",
                                          style: TextStyle(
                                            color: Colors
                                                .white, //This will do the work
                                          )),
                                      onPressed: () {
                                        controller.formKey0.currentState!
                                            .save();
                                        if (controller.formKey0.currentState!
                                            .validate()) {
                                          controller.providersignin(
                                              mobile: controller.loginmobile,
                                              password: "test123");
                                        }
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
// class driverlogin extends StatefulWidget {
//   const driverlogin({Key? key}) : super(key: key);

//   @override
//   State<driverlogin> createState() => _driverloginState();
// }

// // ignore: camel_case_types
// class _driverloginState extends State<driverlogin> {
//   TextEditingController textController = TextEditingController();
//   Authcontroller controller = Get.put(Authcontroller());
//   @override
//   Widget build(BuildContext context) {
//     return
    
//   }
// }
