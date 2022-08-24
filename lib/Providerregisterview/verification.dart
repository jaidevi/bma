import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sampleproj/Dashboard.dart';
import 'package:sampleproj/ProviderLogin.dart';
import 'package:sampleproj/Providerregisterview/Aadharinfo.dart';
import 'package:sampleproj/Providerregisterview/companyinfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:sampleproj/ProviderLogin.dart';
// import 'package:sampleproj/Providerregisterview/PersonalInfo.dart';
// import 'package:sampleproj/Providerregisterview/companyinfo.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Controller/Authcontroller.dart';

class VerificationAuthform extends GetView<Authcontroller> {
  VerificationAuthform({Key? key}) : super(key: key);
  Authcontroller controller = Get.put(Authcontroller());

  bool _isShown = true;
  @override
  Widget build(BuildContext context) {
    double _value;

    bool _upload;
    SharedPreferences prefs;
    String dropdownValue = 'Choose the id proof!';
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
                                              'Documents',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 30,
                                                color: Color(0xff3b3a3a),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Form(
                                      key: controller.formKey3,
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
                                              validator: (value) {
                                                return controller
                                                    .aadharnumbervalidator(
                                                        value!);
                                              },
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText: "Email Verification",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.Aadharnumber =
                                                    value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              validator: (value) {
                                                return controller
                                                    .pancardValidator(value!);
                                              },
                                              // controller: pancardController,
                                              maxLength: 10,
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText: "OTP Verification",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.pancard = value!;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8, 12, 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: FlatButton(
                                      color: Colors.red,
                                      textColor: Colors.green,
                                      child: Text("Back",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      onPressed: () {
                                        controller.formKey1.currentState!
                                            .save();
                                        if (controller.formKey1.currentState!
                                            .validate()) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AadharinfoAuthform()),
                                          );
                                        } else {}
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: FlatButton(
                                      color: Colors.red,
                                      textColor: Colors.green,
                                      child: Text("Submit",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      onPressed: () async {
                                        controller.formKey2.currentState!
                                            .save();
                                        if (controller.formKey2.currentState!
                                            .validate()) {
                                          prefs = await SharedPreferences
                                              .getInstance();
                                          String? Firstname =
                                              prefs.getString("Firstname");
                                          String? Lastname =
                                              prefs.getString("Lastname");

                                          String? Mobile =
                                              prefs.getString("Mobile");
                                          String? AltrMobile =
                                              prefs.getString("AltrMobile");
                                          String? companyname =
                                              prefs.getString("companyname");
                                          String? companyaddress =
                                              prefs.getString("companyaddress");
                                          String? Email =
                                              prefs.getString("Email");
                                          String? countrystr =
                                              prefs.getString("countrystr");
                                          String? citystr =
                                              prefs.getString("citystr");
                                          String? statestr =
                                              prefs.getString("statestr");

                                          String? pincodestr =
                                              prefs.getString("pincodestr");
                                          String? GSTnumber =
                                              prefs.getString("GSTnumber");
                                          String? Profile_image =
                                              prefs.getString("id_image");
                                          String? id_type =
                                              prefs.getString("id_type");
                                          String? id_image =
                                              prefs.getString("id_image");
                                          String? company_image =
                                              prefs.getString("id_image");
                                          String? provider_type =
                                              prefs.getString("provider_type");
                                          String? device_token =
                                              "1234mdngjkdghdjvf";
                                          String? aadhar_verification = "true";
                                          String? aadhar_number =
                                              "322 999h 323 314";
                                          String? password = "test123";
                                          String? has_drivers = "true";
                                          String? role_id = "2";
                                          String? is_verified = "false";
                                          String? status = "true";

                                          String? pan_number =
                                              prefs.getString("pan_number");
                                          controller.providersignup(
                                              Firstname: controller.userfrstName, Lastname: controller.userlstName,Mobile:controller.usermobile,AltrMobile:controller.useraltrmobile,companyname:controller.companyname,companyaddress:controller.companyaddress,
                                              Email:controller.userEmail,countrystr:controller.countrystr,citystr:controller.citystr,statestr:controller.statestr,pincodestr:controller.pincodestr,GSTnumber:controller.GSTnumber,Profile_image:controller
                                                  .selectedImagePath.value,
                                              id_type:controller.selectedValue.toString(),id_image:controller
                                                  .selectedImagePath.value,company_image:controller
                                                  .selectedImagePath.value,provider_type: controller.selectedValue1
                                                  .toString(),device_token:device_token,aadhar_verification:aadhar_verification,
                                              aadhar_number:aadhar_number,password:password,has_drivers:has_drivers,role_id:role_id,is_verified:is_verified,status:status,pan_number:controller.pancard);
                                        
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboard()),
                                          );
                                        } else {}
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
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
