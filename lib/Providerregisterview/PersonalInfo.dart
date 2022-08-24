import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproj/Providerregisterview/companyinfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Controller/Authcontroller.dart';

class PersonalinfoAuthform extends GetView<Authcontroller> {
  PersonalinfoAuthform({Key? key}) : super(key: key);
  Authcontroller controller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    double _value;
    SharedPreferences prefs;
    return Container(
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
              // Generated code for this Card Widget...
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SfSlider(
                                stepSize: 5,
                                min: 20.0,
                                max: 100.0,
                                value: 60,
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 0,
                                onChanged: (value) {
                                  setState() {
                                    _value = 100;
                                  }
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Generated code for this Card Widget...

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 8, 15, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ImageIcon(AssetImage(
                                              'assets/images/register_icon.png')),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Personal Info',
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
                                    Form(
                                      key: controller.formKey,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12.0, 0, 0, 4),
                                                child: Text(
                                                  'Please fill the below form',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    color: Color(0xff9a9a9a),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              // controller: nameController,
                                              //  controller: ,
                                              validator: (value) {
                                                return controller
                                                    .userfrstNameValidator(
                                                        value!);
                                              },
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText: "Enter First name",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),

                                              onSaved: (value) {
                                                controller.userfrstName =
                                                    value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              // controller: nameController,

                                              validator: (value) {
                                                return controller
                                                    .userlstNameValidator(
                                                        value!);
                                              },
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText: "Enter Last name",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),

                                              onSaved: (value) {
                                                controller.userlstName = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .emailValidator(value!);
                                              },
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                hintText: "Enter email",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.userEmail = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              validator: (value) {
                                                return controller
                                                    .mobileValidator(value!);
                                              },
                                              // controller: mobileController,
                                              maxLength: 10,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: "Enter Mobile Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.usermobile = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              validator: (value) {
                                                return controller
                                                    .mobilealtrValidator(
                                                        value!);
                                              },
                                              // controller: mobileController,
                                              maxLength: 10,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Enter Alternate Mobile Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.useraltrmobile =
                                                    value!;
                                              },
                                            ),
                                          ),

                                          // Padding(
                                          //   padding: const EdgeInsets.fromLTRB(
                                          //       12.0, 8, 12, 15),
                                          //   child: TextFormField(
                                          //     //controller: textController,
                                          //     keyboardType:
                                          //         TextInputType.number,
                                          //     decoration: InputDecoration(
                                          //       hintText: "Upload ID  Proof",
                                          //       border: OutlineInputBorder(
                                          //         borderRadius:
                                          //             BorderRadius.circular(
                                          //                 5.0),
                                          //         borderSide: BorderSide(
                                          //             color: Colors.red),
                                          //       ),
                                          //     ),
                                          //     validator: (value) {
                                          //       if (value!.isEmpty) {
                                          //       } else {
                                          //         return 'Please upload any IDProof';
                                          //       }
                                          //     },
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8, 12, 8),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: FlatButton(
                                  color: Colors.red,
                                  textColor: Colors.green,
                                  child: Text("Next",
                                      style: TextStyle(
                                        color: Colors
                                            .white, //This will do the work
                                      )),
                                  onPressed: () async {
                                    // controller.trySubmit();
                                    controller.formKey.currentState!.save();
                                    if (controller.formKey.currentState!
                                        .validate()) {
                                      prefs =
                                          await SharedPreferences.getInstance();

                                   
                                      await prefs.setString('Firstname', controller.userfrstName);
                                      await prefs.setString('Lastname', controller.userlstName);
                                      await prefs.setString('Email', controller.userEmail);
                                      await prefs.setString('Mobile', controller.usermobile);
                                      await prefs.setString('AltrMobile', controller.useraltrmobile);
                                    
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CompanyinfoAuthform()),
                                      );
                                    } else {}
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
